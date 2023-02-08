import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Flutter tips',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 30),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                'Build your career with Raeda Haj Ali',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.35), fontSize: 23),
              ),
            ),
            trailing: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>const EditNoteView()));
              },
              child: Icon(FontAwesomeIcons.trash,
                  size: 23, color: Colors.black.withOpacity(0.8)),
            ),
          ),
          Text(
            '5- Feb-2023',
            style:
                TextStyle(color: Colors.black.withOpacity(0.35), fontSize: 20),
          )
        ],
      ),
    );
  }
}