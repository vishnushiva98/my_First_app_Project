
import 'package:flutter/material.dart';

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
                      
                      fontSize: 14.5,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  btutwoText,
                  style: TextStyle(
                      
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
