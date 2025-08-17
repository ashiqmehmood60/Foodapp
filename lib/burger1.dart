import 'package:flutter/material.dart';

class Burger1 extends StatefulWidget {
  const Burger1({super.key});

  @override
  State<Burger1> createState() => _Burger1State();
}

class _Burger1State extends State<Burger1> {
  int portion = 2;
  double spiceLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              // Top bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(Icons.arrow_back), Icon(Icons.search)],
              ),

              SizedBox(height: 20),

              // Burger image
              Center(child: Image.asset('assets/image 1.png', height: 180)),

              SizedBox(height: 20),

              // Title
              Text(
                "Cheeseburger Wendy's Burger",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              // Rating & Time
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  SizedBox(width: 4),
                  Text("4.9  "),
                  Text("– 26 mins", style: TextStyle(color: Colors.grey)),
                ],
              ),

              SizedBox(height: 10),

              // Description
              Text(
                "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.",
                style: TextStyle(color: Colors.grey[700]),
              ),

              SizedBox(height: 16),

              // Spicy level and portion
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Spicy slider
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Spicy"),
                      Slider(
                        value: spiceLevel,
                        onChanged: (value) =>
                            setState(() => spiceLevel = value),
                        divisions: 2,
                        min: 0,
                        max: 2,
                        activeColor: Colors.red,
                        inactiveColor: Colors.green,
                        label: spiceLevel == 0
                            ? 'Mild'
                            : spiceLevel == 1
                            ? 'Medium'
                            : 'Hot',
                      ),
                      Row(
                        children: const [Text("Mild"), Spacer(), Text("Hot")],
                      ),
                    ],
                  ),

                  // Portion selector
                  Column(
                    children: [
                      Text("Portion"),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              if (portion > 1) setState(() => portion--);
                            },
                          ),
                          Text(
                            portion.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() => portion++);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              Spacer(),

              // Price & Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "\$8.24",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 24,
                      ),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("ORDER NOW"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
