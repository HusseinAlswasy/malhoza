import 'package:flutter/material.dart';
import 'package:malhoza/Widget/custome_text_feild.dart';

class AddModalProgressSheet extends StatelessWidget {
  const AddModalProgressSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomeTextFeild(text: 'Add Note',lines: 1,),
          SizedBox(height: 10,),
          CustomeTextFeild(text: 'Add Title',lines: 5,),
          SizedBox(height: 30,),
          Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.deepPurple,
            ),
            child: Center(child: Text('ADD',style: TextStyle(color: Colors.white,fontSize: 20,),)),
          ),
        ],
      ),
    );
  }
}
