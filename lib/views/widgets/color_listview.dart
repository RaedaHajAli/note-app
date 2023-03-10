import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/models/note_model.dart';

import '../../constants.dart';
import '../../cubits/add_note_cubit/add_note_cubit.dart';
import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({Key? key}) : super(key: key);
  

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15 * 2,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isActive: currentIndex == index,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 5,
          );
        },
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

