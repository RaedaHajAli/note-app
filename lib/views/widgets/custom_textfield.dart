import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          label: Text(title),
          border:buildBorder() ,
          enabledBorder: buildBorder(),
          )
         
              
    );
  }

  OutlineInputBorder buildBorder() => OutlineInputBorder(borderRadius: BorderRadius.circular(16),borderSide:const BorderSide(color: Colors.white));
}
