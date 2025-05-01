import 'package:flutter/material.dart';

class AddModalProgressSheet extends StatelessWidget {
  const AddModalProgressSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add Note',
              hintStyle: TextStyle(color: Colors.deepPurple),
            ),
          ),
        ],
      ),
    );
  }
}
