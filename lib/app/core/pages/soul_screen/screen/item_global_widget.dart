import 'package:flutter/material.dart';

import '../../../../component/utils/my_images.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child:Image(image: AssetImage(MyImage.sound1)),
          ),
          const SizedBox(height: 8),
          const SizedBox(height: 4),
          const Text(
            "#Ambition   #Inspiration   #Motivational",
            style: TextStyle(color: Colors.white70, fontSize: 12),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Row(
                children: [
                  Icon(Icons.visibility, color: Colors.white70, size: 18),
                  SizedBox(width: 4),
                  Text("567.57k",
                      style: TextStyle(color: Colors.white70)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.share, color: Colors.white70, size: 18),
                  SizedBox(width: 4),
                  Text("Share", style: TextStyle(color: Colors.white70)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.download, color: Colors.white70, size: 18),
                  SizedBox(width: 4),
                  Text("Download", style: TextStyle(color: Colors.white70)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.bookmark_border,
                      color: Colors.white70, size: 18),
                  SizedBox(width: 4),
                  Text("Save", style: TextStyle(color: Colors.white70)),
                ],
              ),
            ],
          ),
        ],
      ),
    );

  }
}
