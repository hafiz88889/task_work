import 'package:flutter/material.dart';

import '../../../../../component/utils/my_images.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        //  mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                Image(image: AssetImage(MyImage.sound1)),
                Positioned(
                  top: 65,
                  left: 40,
                  right: 40,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        const Icon(Icons.graphic_eq,
                            size: 40, color: Colors.brown),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.play_arrow,
                                color: Colors.brown, size: 30),
                            Text("10.00",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown)),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Music: Wiper",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
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
