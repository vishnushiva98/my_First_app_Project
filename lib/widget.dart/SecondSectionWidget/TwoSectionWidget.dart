import 'package:flutter/material.dart';

class CarHeder extends StatelessWidget {
  final String carText;
  final double carFontSize;
  final Color carFontColor;
  final FontWeight carFontWeight;

  CarHeder({
    required this.carFontColor,
    required this.carFontSize,
    required this.carText,
    required this.carFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          carText,
          style: TextStyle(
           
            color: carFontColor,
            fontWeight: FontWeight.bold,
            fontSize: carFontSize,
          ),
        ),
      ],
    );
  }
}