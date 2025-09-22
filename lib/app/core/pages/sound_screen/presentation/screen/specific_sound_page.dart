import 'package:flutter/material.dart';
import 'package:task_app/app/component/utils/my_color.dart';

import '../../../../../component/utils/my_images.dart';

class SpecificSoundPage extends StatelessWidget {
  const SpecificSoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Icon(Icons.arrow_forward_rounded,color: MyColor.whiteColor,size: 35,),
                const SizedBox(width: 8,),
                Text("Sleep sounds",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: MyColor.whiteColor),)
              ],),
            ),
           // const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Container(
                padding: EdgeInsets.all(30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: MyColor.buttonColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                  ],
                ),
               child: Column(
                 children: [
                   Image(image: AssetImage(MyImage.sound1)),
                   const SizedBox(height: 20,),
                   IconButton(onPressed: (){}, icon: Icon(Icons.graphic_eq,color: MyColor.homeTextColor,size: 50,))
                 ],
               ),
              ),
            ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 100,),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withAlpha(50),
                        border: Border.all(color: Colors.white.withAlpha(150), width: 2),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('04.00', style: TextStyle(color: Colors.white)),
                        Text('12.00', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Slider(
                      value: 0.3,
                      onChanged: (newValue) {},
                      min: 0.0,
                      max: 1.0,
                      activeColor: MyColor.homeTextColor,
                      inactiveColor: Colors.white
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Music Owl', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 5),
                          Text('#ambition #inspiration #motivational', style: TextStyle(color: Colors.white, fontSize: 12)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildActionButton(Icons.remove_red_eye_outlined, '657.5K'),
                          _buildActionButton(Icons.share, 'Share'),
                          _buildActionButton(Icons.download, 'Download'),
                          _buildActionButton(Icons.bookmark_border, 'Save'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                top: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 150,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Slider(
                          value: 0.5,
                          onChanged: (newValue) {},
                          min: 0.0,
                          max: 1.0,
                          activeColor: MyColor.homeTextColor,
                          inactiveColor: Colors.white,
                          thumbColor: MyColor.homeTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 24),
        const SizedBox(height: 4),
        Text(text, style: const TextStyle(color: Colors.white, fontSize: 10)),
      ],
    );
  }
}

