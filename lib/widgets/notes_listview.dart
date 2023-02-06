import 'package:flutter/material.dart';

import 'note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.separated(
        padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return const NoteItem();
                },
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
              ),
    );
  }
}