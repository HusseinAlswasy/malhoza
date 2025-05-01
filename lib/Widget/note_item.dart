import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: EdgeInsets.only(top: 24, bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 254, 216, 78),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Task 1",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "Build Ui With Hussein",
                style: TextStyle(
                  color: Colors.grey.withOpacity(.8),
                  fontSize: 22,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete_rounded, color: Colors.black, size: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              '10 - 7 -2025',
              style: TextStyle(
                color: Colors.grey.withOpacity(.8),
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
