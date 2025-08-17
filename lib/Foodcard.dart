import 'package:flutter/material.dart';

class Foodcard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String image;
  final double rating;
  const Foodcard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.rating,
  });

  @override
  State<Foodcard> createState() => _FoodcardState();
}

class _FoodcardState extends State<Foodcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(2, 2)),
        ],
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(widget.image, height: 60)),
          SizedBox(height: 10),
          Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            widget.subtitle,
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  SizedBox(width: 4),
                  Text(widget.rating.toString()),
                ],
              ),
              Icon(Icons.favorite_border, size: 20),
            ],
          ),
        ],
      ),
    );
  }
}
