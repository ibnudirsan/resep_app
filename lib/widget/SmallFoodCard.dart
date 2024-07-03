import 'package:flutter/material.dart';

class SmallFoodCard extends StatelessWidget {
  const SmallFoodCard({
    super.key,
    required this.name,
    required this.image,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          const Text(
            "By Mario Aprilianto",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
