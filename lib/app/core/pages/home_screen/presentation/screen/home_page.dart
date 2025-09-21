import 'package:flutter/material.dart';
import 'package:task_app/app/component/utils/my_color.dart';
import 'package:task_app/app/component/utils/my_images.dart';

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
    return Scaffold(
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
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu, color: MyColor.whiteColor, size: 30),
                    ),
                    SizedBox(
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
                  ],
                ),
                const SizedBox(height: 20),
                GridView.builder(
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
                          const SizedBox(height: 5,),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
