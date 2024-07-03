import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../widget/SmallFoodCard.dart';
import '../widget/FoodCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: ListView(
            children: [
              const Text(
                'Temukan Berbagai Resep \nKuliner Nusantara',
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
              const SizedBox(
                height: 30,
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
                      name: "Pecel Semarang",
                    ),
                    SizedBox(width: 20),
                    FoodCard(
                      image: "assets/images/soto.png",
                      name: "Soto Semarang",
                    ),
                    SizedBox(width: 20),
                    FoodCard(
                      image: "assets/images/pecel.png",
                      name: "Pecel Semarang",
                    ),
                    SizedBox(width: 20),
                    FoodCard(
                      image: "assets/images/soto.png",
                      name: "Soto Semarang",
                    ),
                    SizedBox(width: 20),
                    FoodCard(
                      image: "assets/images/pecel.png",
                      name: "Pecel Semarang",
                    ),
                    SizedBox(width: 20),
                    FoodCard(
                      image: "assets/images/soto.png",
                      name: "Soto Semarang",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
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
                      image: "assets/images/soto.png",
                      name: "Soto Semarang",
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
                      image: "assets/images/burger-terbaru.png",
                      name: 'Burger Manis',
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: SmallFoodCard(
                      image: "assets/images/spaghetti-terbaru.png",
                      name: 'Spaghetti Spesial',
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
