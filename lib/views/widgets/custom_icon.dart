import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.icon, this.onTap}) : super(key: key);
  final IconData icon;
  final  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 46,
        width: 46,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withOpacity(0.05)),
        child: Icon(
          icon,
          size: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}
