import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData barButton;
  final void Function()? buttonAction;
  final String barButtontext;

  AppBarButton({
    required this.barButton,
    required this.buttonAction,
    required this.barButtontext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Container(
        // width: MediaQuery.of(context).size.width / 1.3,
        child: ElevatedButton(
          onPressed: buttonAction,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                barButton,
                color: Colors.white,
                size: 13,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(barButtontext,
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w500)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
