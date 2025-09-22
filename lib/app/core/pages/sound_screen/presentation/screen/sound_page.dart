import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_app/app/component/utils/my_color.dart';
import 'package:task_app/app/component/utils/my_images.dart';
import 'package:task_app/app/component/utils/routes.dart';
import 'package:task_app/app/core/pages/sound_screen/presentation/widget/item_widget.dart';

class SoundPage extends StatelessWidget {
  const SoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(children: [
              const SizedBox(height: 10,),
              Row(children: [
                Icon(Icons.arrow_forward_rounded,color: MyColor.whiteColor,size: 35,),
                const SizedBox(width: 8,),
                Text("Sleep sounds",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: MyColor.whiteColor),)
              ],),
              const SizedBox(height: 15,),
              GestureDetector(
                  onTap: ()=>Get.toNamed(RouteHelper.specificSoundPage),
                  child: ItemWidget()),
              const SizedBox(height: 20,),
              ItemWidget(),
              const SizedBox(height: 20,),
              ItemWidget(),
              const SizedBox(height: 20,),
              ItemWidget(),
              const SizedBox(height: 20,),
            ]),
          ),
        ),
      ),
    );
  }
}
