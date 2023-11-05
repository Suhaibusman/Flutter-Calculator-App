import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final int number;
  Color? bgColor;
   CustomContainer({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor ?? Colors.white
      ),
      child: Center(child: Text(number.toString() , style: const TextStyle(color: Colors.black , fontSize: 32 ,fontWeight: FontWeight.bold),)),
    );
  }
}