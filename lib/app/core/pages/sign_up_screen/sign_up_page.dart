import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_app/app/component/utils/my_color.dart';
import 'package:task_app/app/component/utils/my_images.dart';
import 'package:task_app/app/component/utils/routes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isSignUp = true;
  void _toggleForm(bool isSignUp) {
    setState(() {
      _isSignUp = isSignUp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.buttonColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image(image: AssetImage(MyImage.birdsThree)),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image(image: AssetImage(MyImage.flowerOne)),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 200),
                    Row(
                      children: [
                        Expanded(
                          child:
                              _isSignUp
                                  ? _buildFilledButton('Sign Up', () {})
                                  : _buildOutlinedButton(
                                    'Sign Up',
                                    () => _toggleForm(true),
                                  ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child:
                              !_isSignUp
                                  ? _buildFilledButton('Log In', () {})
                                  : _buildOutlinedButton(
                                    'Log In',
                                    () => _toggleForm(false),
                                  ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 50),
                    _isSignUp ? _buildSignUpForm() : _buildLoginForm(),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(RouteHelper.bottomNav);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColor.homeTextColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 15,
                        ),
                      ),
                      child: Text(
                        _isSignUp ? 'Next' : 'Log In',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 150),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // A helper function to build the sign up form fields
  Widget _buildSignUpForm() {
    return Column(
      children: [
        _buildTextField('Enter your username', false),
        const SizedBox(height: 20),
        _buildPasswordField('Create A Password'),
        const SizedBox(height: 20),
        _buildPasswordField('Confirm Password'),
        const SizedBox(height: 20),
        _buildTextField('Enter your email address', false),
      ],
    );
  }

  // A helper function to build the log in form fields
  Widget _buildLoginForm() {
    return Column(
      children: [
        _buildTextField('Enter your email address', false),
        const SizedBox(height: 20),
        _buildPasswordField('Enter Password'),
      ],
    );
  }

  // Helper method to build a text field
  Widget _buildTextField(String hintText, bool obscureText) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[600]),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 18,
          ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }

  // Helper method to build a password field with an eye icon
  Widget _buildPasswordField(String hintText) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[600]),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 18,
          ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          suffixIcon: IconButton(
            icon: const Icon(Icons.visibility_off, color: Colors.grey),
            onPressed: () {
              // This part would toggle password visibility in a real app
            },
          ),
        ),
      ),
    );
  }
  Widget _buildFilledButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:  MyColor.homeTextColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }

  // Helper method to build an outlined button
  Widget _buildOutlinedButton(String text, VoidCallback onPressed) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side:  BorderSide(color:  MyColor.homeTextColor, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, color:  MyColor.homeTextColor),
      ),
    );
  }
}
