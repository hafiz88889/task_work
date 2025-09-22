import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_app/app/component/utils/my_color.dart';
import 'package:task_app/app/component/utils/my_images.dart';

class DrawerOption extends StatelessWidget {
  const DrawerOption({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {"icon": Icons.local_fire_department, "title": "Popular"},
      {"icon": Icons.fiber_new, "title": "Latest"},
      {"icon": Icons.sentiment_satisfied, "title": "Great"},
      {"icon": Icons.star, "title": "Top Rated"},
      {"icon": Icons.category, "title": "Categories"},
      {"icon": Icons.trending_up, "title": "Trending"},
      {"icon": Icons.thumb_up, "title": "Recommended"},
      {"icon": Icons.local_fire_department, "title": "Popular"},
      {"icon": Icons.fiber_new, "title": "Latest"},
      {"icon": Icons.sentiment_satisfied, "title": "Great"},
      {"icon": Icons.star, "title": "Top Rated"},
      {"icon": Icons.category, "title": "Categories"},
      {"icon": Icons.trending_up, "title": "Trending"},
      {"icon": Icons.thumb_up, "title": "Recommended"},
      {"icon": Icons.thumb_up, "title": "Recommended"},
    ];
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: MyColor.buttonColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: ()=>Get.back(),
                  child: Icon(Icons.close, size: 30, color: MyColor.homeTextColor)),
            ],
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              "Peace comes from within\n Do not seek it without",
              style: TextStyle(fontSize: 20, color: MyColor.homeTextColor),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage(MyImage.birdsOne)),
              Image(image: AssetImage(MyImage.birdsTwo)),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(items[index]["icon"]),
                  title: Text(items[index]["title"]),
                );
              },
            ),
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Logout",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
              const SizedBox(width: 10,),
              Icon(Icons.logout_outlined)
            ],
          )
        ],
      ),
    );
  }
}
