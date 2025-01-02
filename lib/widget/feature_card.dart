import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  final IconData icon;
  const FeatureCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
          decoration: BoxDecoration(
            color: Color(0xffeaeaea),
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Icon(icon),
        ),
        Text(title)
      ],
    );
  }
}
