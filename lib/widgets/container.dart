import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
   num? number;
   String? operation;
  Color? bgColor;
   CustomContainer({super.key,  this.number , this.operation,this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor ?? Colors.white
      ),
      child: Center(child: Text(operation ?? number.toString() , style: const TextStyle(color: Colors.black , fontSize: 32 ,fontWeight: FontWeight.bold),)),
    );
  }
}