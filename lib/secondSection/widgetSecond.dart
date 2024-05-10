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
            fontFamily: 'SpaceGrotesk',
            color: carFontColor,
            fontWeight: FontWeight.bold,
            fontSize: carFontSize,
          ),
        ),
      ],
    );
  }
}

class secondSectionWidget extends StatelessWidget {
  final String btuText;
  final String btutwoText;
  final void Function() btuAction;

  secondSectionWidget({
    required this.btuText,
    required this.btutwoText,
    required this.btuAction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 8),
      child: Container(
        child: OutlinedButton(
          onPressed: btuAction,
          style: OutlinedButton.styleFrom(
            // backgroundColor: Colors.grey,
            padding: EdgeInsets.only(
              right: 10,
              left: 10,
            ),
            side: BorderSide(color: Colors.grey, width: 1.5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 8,
              left: 8,
              right: 24,
              bottom: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  btuText,
                  style: TextStyle(
                      fontFamily: 'SpaceGrotesk',
                      fontSize: 14.5,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  btutwoText,
                  style: TextStyle(
                      fontFamily: 'SpaceGrotesk',
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
