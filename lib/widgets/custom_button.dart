
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap,required this.text});
  String? text;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: Text('$text',
            style: const TextStyle(fontSize: 24, color:Colors.white)),
      ),
    );
  }
}
