// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CircleIcons extends StatefulWidget {
  final IconData icon;
  final String label;
  const CircleIcons({super.key, required this.icon, required this.label});

  @override
  State<CircleIcons> createState() => _CircleIconsState();
}

class _CircleIconsState extends State<CircleIcons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.3,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
            Opacity(
              opacity: 1,
              child: Icon(
                widget.icon,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          widget.label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
