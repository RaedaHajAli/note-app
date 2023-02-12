import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:noteapp/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,   this.maxLines = 1, this.onSaved,this.hint,this.onChanged});
  
  int maxLines;
  String? hint;
  void Function(String?)? onSaved;
  void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: kPrimaryColor,
        maxLines: maxLines,
        onSaved: onSaved,
        onChanged: onChanged,
        textInputAction: TextInputAction.done,
        
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        
        decoration: InputDecoration(
          
          hintText:hint ,
          hintStyle: const TextStyle(color:kPrimaryColor, fontSize: 20),
          border: buildBorder(),
          enabledBorder: buildBorder(kPrimaryColor),
        ));
  }

  OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white));
}
