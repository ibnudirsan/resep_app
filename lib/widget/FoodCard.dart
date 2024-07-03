import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.name,
    required this.image,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Column(
        children: [
          SizedBox(
            width: 220,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.more_horiz,
                size: 20,
              )
            ],
          ),
          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/person.jpg'),
              ),
              SizedBox(width: 5),
              Text(
                "By Farah Kuin",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
