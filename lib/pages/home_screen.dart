import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const Text(
                'Temukan berbagai resep \nKuliner Nusantara',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  hintText: 'Cari Resep',
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Resep Viral',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.orange,
                    ),
                    child: const Row(
                      children: [
                        Text('Lihat Semuanya'),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodCard(
                      image: "assets/images/pecel.png",
                      name: "Pecel",
                    ),
                    SizedBox(width: 20),
                    FoodCard(
                      image: "assets/images/pecel.png",
                      name: "Pecel",
                    ),
                    SizedBox(width: 20),
                    FoodCard(
                      image: "assets/images/pecel.png",
                      name: "Pecel",
                    ),
                    SizedBox(width: 20),
                    FoodCard(
                      image: "assets/images/pecel.png",
                      name: "Pecel",
                    ),
                    SizedBox(width: 20),
                    FoodCard(
                      image: "assets/images/pecel.png",
                      name: "Pecel",
                    ),
                    SizedBox(width: 20),
                    FoodCard(
                      image: "assets/images/pecel.png",
                      name: "Pecel",
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Resep Terbaru',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.orange,
                    ),
                    child: const Row(
                      children: [
                        Text("Lihat Semuanya"),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: SmallFoodCard(
                      image: "assets/images/pancake-terbaru.png",
                      name: 'Pancake Pisang Manis',
                    ),
                    flex: 1,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: SmallFoodCard(
                      image: "assets/images/pancake-terbaru.png",
                      name: 'Pancake Pisang Manis',
                    ),
                    flex: 1,
                  ),
                ],
              ),
              SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(
                    child: SmallFoodCard(
                      image: "assets/images/pancake-terbaru.png",
                      name: 'Pancake Pisang Manis',
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: SmallFoodCard(
                      image: "assets/images/pancake-terbaru.png",
                      name: 'Pancake Pisang Manis',
                    ),
                    flex: 1,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
