import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onTap}) : super(key: key);
  final String title;
  final IconData icon;
  final  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 32, color: Colors.white),
        ),
        CustomIcon(icon: icon,onTap:onTap ,)
      ],
    );
  }
}
