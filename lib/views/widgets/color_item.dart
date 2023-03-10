import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 15,
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              radius: 12,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 15,
            backgroundColor: color,
          );
  }
}
