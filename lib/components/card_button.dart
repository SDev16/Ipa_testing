import 'package:flutter/material.dart';
import 'package:meal_magik/common/color_extension.dart';

class CardButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const CardButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(20),
         margin: const EdgeInsets.symmetric(horizontal: 100),
          decoration:
              BoxDecoration(color: Colors.blue,
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color:TColor.white,
                fontSize: 16,
              ),
            ),
          )),
    );
  }
}
