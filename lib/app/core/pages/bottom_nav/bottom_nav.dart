 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/app/core/pages/sound_screen/presentation/screen/sound_page.dart';

import '../../../component/utils/my_color.dart';
import '../home_screen/presentation/screen/home_page.dart';
import '../soul_screen/screen/soul_page.dart';

 class BottomNavController extends GetxController {
   var selectedIndex = 0.obs;

   void changeIndex(int index) {
     selectedIndex.value = index;
   }
 }

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller=Get.put(BottomNavController());
    final List<Widget> pages = [
      HomePage(),
      SoundPage(),
      SoulPage(),
      SoundPage(),
      SoundPage(),
    ];
    return Obx(()=>Scaffold(
      body: pages[controller.selectedIndex.value],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
        child: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
            onTap: controller.changeIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: MyColor.buttonColor,
            selectedItemColor: MyColor.homeTextColor,
            unselectedItemColor: MyColor.homeTextColor,
            showUnselectedLabels: true,
            selectedLabelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
            unselectedFontSize: 14,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.music_note,size: 30,),label: "Sounds"),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined,size: 30,),label: "Soul"),
              BottomNavigationBarItem(icon: Icon(Icons.keyboard_command_key,size: 30,),label: "Top"),
              BottomNavigationBarItem(icon: Icon(Icons.more_vert,size: 30,),label: "More"),
            ]),
      ),
    ));
  }
}
