import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';


import 'package:noteapp/constants.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/simple_bloc_observer.dart';
import 'package:noteapp/views/note_view.dart';

void main() async {
  await Hive.initFlutter();
 Hive.registerAdapter(NoteModelAdapter());
 
  await Hive.openBox<NoteModel>(kNotesBox);

 
   Bloc.observer = SimpleBlocObserver();
  
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Itim', brightness: Brightness.dark),
      home: const NotesView(),
    );
  }
}
