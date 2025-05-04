
import 'package:flutter/material.dart';

class Customebutton extends StatelessWidget {
  const Customebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.deepPurple,
            ),
            child: Center(child: Text('ADD',style: TextStyle(color: Colors.white,fontSize: 20,),)),
          );
  }
}