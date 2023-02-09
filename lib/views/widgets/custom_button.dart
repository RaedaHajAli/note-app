import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.onTap, required this.text, this.isLoading = false});
  final String? text;
  final VoidCallback? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: isLoading
            ? SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                color: Colors.black.withOpacity(0.8),
                
              ),
            )
            : Text('$text',
                style: TextStyle(
                    fontSize: 24, color: Colors.black.withOpacity(0.8))),
      ),
    );
  }
}
