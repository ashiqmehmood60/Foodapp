import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:foodapp/Foodcard.dart';
import 'package:foodapp/listnames.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Map<String, dynamic>> foods = [
    {
      "title": "Cheeseburger",
      "subtitle": "Wendy’s Burger",
      "image": "assets/image 1.png",
      "rating": 4.9,
    },
    {
      "title": "Hamburger",
      "subtitle": "Veggie Burger",
      "image": "assets/image 3.png",
      "rating": 4.8,
    },
    {
      "title": "Zinger",
      "subtitle": "Chicken Burger",
      "image": "assets/image 4.png",
      "rating": 4.6,
    },
    {
      "title": "BeefBurger",
      "subtitle": "Fried Chicken Burger",
      "image": "assets/image 5.png",
      "rating": 4.5,
    },
    {
      "title": "Special",
      "subtitle": "Veggie Burger",
      "image": "assets/image 3.png",
      "rating": 4.8,
    },
    {
      "title": "Cheerspyburger",
      "subtitle": "Wendy’s Burger",
      "image": "assets/image 1.png",
      "rating": 4.9,
    },
  ];
  int currentindex = 2;
  final iconlist = [
    Icon(CupertinoIcons.home, size: 30),
    Icon(CupertinoIcons.person, size: 30),
    Icon(CupertinoIcons.add_circled, size: 30),
    Icon(CupertinoIcons.chat_bubble, size: 30),
    Icon(Icons.favorite, size: 30),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      bottomNavigationBar: Theme(
        data: Theme.of(
          context,
        ).copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          color: Color(0xffEF2A39),
          buttonBackgroundColor: Color(0xffEF2A39),
          backgroundColor: Colors.transparent,
          height: 70,
          index: currentindex,
          onTap: (currentindex) => setState(() {
            currentindex = this.currentindex;
          }),
          items: iconlist,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Foodgo",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: "Dancing",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Order your favourate Food",
                      style: TextStyle(color: Colors.black87, fontSize: 18),
                    ),
                  ],
                ),
                CircleAvatar(radius: 25, backgroundImage: AssetImage('')),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 12),
                Container(
                  height: 60,
                  width: 210,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFF),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 12),
                      Icon(CupertinoIcons.search, size: 28),
                      SizedBox(width: 10),
                      Text(
                        "search",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xffEF2A39),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 12),
                      Center(child: Icon(Icons.filter_list_rounded, size: 28)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Listnames(name: 'All', color: Color(0xffEF2A39)),
                    Listnames(name: "Combos", color: Colors.white),
                    Listnames(name: "Spliders", color: Colors.white),
                    Listnames(name: "Chief", color: Colors.white),
                    Listnames(name: "Zinger", color: Colors.white),
                    Listnames(name: "Special", color: Colors.white),
                    Listnames(name: "Crispy", color: Colors.white),
                    Listnames(name: "Chiken", color: Colors.white),
                    Listnames(name: "Zinger", color: Colors.white),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: foods.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 3 / 3.8,
                ),
                itemBuilder: (context, index) {
                  final food = foods[index];
                  return Foodcard(
                    title: food["title"],
                    subtitle: food["subtitle"],
                    image: food["image"],
                    rating: food["rating"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
