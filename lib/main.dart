import 'package:flutter/material.dart';
import 'package:noteapp/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Itim',
        brightness: Brightness.dark
      ),
      home:const NotesView(),
    );
  }
}