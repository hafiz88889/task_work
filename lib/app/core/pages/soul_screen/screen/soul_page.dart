import 'package:flutter/material.dart';
import 'package:task_app/app/component/utils/my_color.dart';
import 'package:task_app/app/core/pages/soul_screen/screen/item_global_widget.dart';

class SoulPage extends StatelessWidget {
  const SoulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(padding: EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Row(children: [
                  Icon(Icons.arrow_forward_rounded,color: MyColor.whiteColor,size: 35,),
                  const SizedBox(width: 8,),
                  Text("Sleep sounds",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: MyColor.whiteColor),)
                ],),
                const SizedBox(height: 15,),
                ItemWidget(),
                ItemWidget(),
                ItemWidget(),
                ItemWidget(),
                ItemWidget(),
              ],
            ),
            )),
      ),
    );
  }
}
