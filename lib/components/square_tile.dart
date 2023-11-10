import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  const SquareTile({super.key, required this.imagePath,  required this.onTap});
  final String imagePath;
  final onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Image.asset(imagePath,height: 30,),
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}