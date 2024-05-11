import 'package:flutter/material.dart';

class ImageIconFor extends StatelessWidget {
  final IconData ImageIcon;
  // final void Function()? ImageOnTop;
  final double ImageLeft;

  ImageIconFor({
    required this.ImageIcon,
    required this.ImageLeft,
    // required this.ImageOnTop,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      left: ImageLeft,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        onPressed: () {
          Navigator.pop(context);
          // Navigator.pushNamed(context, '/homepage');
        },
        child: Icon(
          ImageIcon,
          color: Colors.black,
          size: 21,
        ),
      ),
    );
  }
}