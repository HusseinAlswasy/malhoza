
import 'package:flutter/material.dart';

class Customebutton extends StatelessWidget {
   Customebutton({super.key,this.ontap});

  @override
  void Function()? ontap;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.deepPurple,
              ),
              child: Center(child: Text('ADD',style: TextStyle(color: Colors.white,fontSize: 20,),)),
            ),
    );
  }
}