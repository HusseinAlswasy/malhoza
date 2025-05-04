
import 'package:flutter/material.dart';

class CustomeTextFeild extends StatelessWidget {
   CustomeTextFeild({super.key,required this.text,this.lines=1});

  @override
  String text;
  int lines;
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: lines,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: text,
              hintStyle: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,),
            ),
          );
  }
}