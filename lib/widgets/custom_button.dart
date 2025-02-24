import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color  color;

  const CustomButton({super.key, required this.text, required this.color});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.all(10),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}