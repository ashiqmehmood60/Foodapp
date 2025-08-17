import 'package:flutter/material.dart';

class Listnames extends StatefulWidget {
  final String name;
  final Color color;
  const Listnames({super.key, required this.name, required this.color});

  @override
  State<Listnames> createState() => _ListState();
}

class _ListState extends State<Listnames> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black45),
        ),
        child: Center(
          child: Text(
            widget.name,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
