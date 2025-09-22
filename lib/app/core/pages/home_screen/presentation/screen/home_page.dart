import 'package:flutter/material.dart';
import 'package:task_app/app/component/utils/my_color.dart';
import 'package:task_app/app/component/utils/my_images.dart';

import '../../data/drawer_option.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
    List<String>wallpaper=[
      MyImage.wallpaper1,
      MyImage.wallpaper1,
      MyImage.wallpaper1,
      MyImage.wallpaper1,
    ];
    return Scaffold(
      drawer: Drawer(
        child: DrawerOption(),
      ),

      backgroundColor: MyColor.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    Builder(
                      builder: (context) {
                        return IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: MyColor.whiteColor,
                            size: 30,
                          ),
                        );
                      }
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(left: 20),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: MyColor.buttonColor,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    items[index]["icon"],
                                    color: MyColor.homeTextColor,
                                    size: 30,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    items[index]["title"],
                                    style: TextStyle(
                                      color: MyColor.homeTextColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: MyColor.buttonColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            items[index]["icon"],
                            color: MyColor.homeTextColor,
                            size: 25,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            textAlign: TextAlign.center,
                            items[index]["title"],
                            style: TextStyle(
                              color: MyColor.homeTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Featured wallpaper",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: MyColor.whiteColor,
                        ),
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: MyColor.whiteColor,
                      ),
                    ),
                    const SizedBox(width: 3,),
                    Icon(Icons.keyboard_arrow_right_rounded,size: 30,color: MyColor.whiteColor,)
                  ],
                ),
                const SizedBox(height: 12,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 160,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: wallpaper.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 150,
                              width: 150,
                              margin: EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage(wallpaper[index]),fit: BoxFit.cover)
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Featured Quotes",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: MyColor.whiteColor,
                        ),
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: MyColor.whiteColor,
                      ),
                    ),
                    const SizedBox(width: 3,),
                    Icon(Icons.keyboard_arrow_right_rounded,size: 30,color: MyColor.whiteColor,)
                  ],
                ),
                const SizedBox(height: 12,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 160,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: wallpaper.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 150,
                              width: 150,
                              margin: EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage(wallpaper[index]),fit: BoxFit.cover)
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Featured Memorial Cards",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: MyColor.whiteColor,
                        ),
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: MyColor.whiteColor,
                      ),
                    ),
                    const SizedBox(width: 3,),
                    Icon(Icons.keyboard_arrow_right_rounded,size: 30,color: MyColor.whiteColor,)
                  ],
                ),
                const SizedBox(height: 12,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 160,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: wallpaper.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 150,
                              width: 150,
                              margin: EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage(wallpaper[index]),fit: BoxFit.cover)
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Announcement",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: MyColor.whiteColor,
                        ),
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: MyColor.whiteColor,
                      ),
                    ),
                    const SizedBox(width: 3,),
                    Icon(Icons.keyboard_arrow_right_rounded,size: 30,color: MyColor.whiteColor,)
                  ],
                ),
                const SizedBox(height: 15,),
            Container(
              height: 150,
             // width: 150,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage(MyImage.wallpaper1),fit: BoxFit.cover)
              ),
            )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
