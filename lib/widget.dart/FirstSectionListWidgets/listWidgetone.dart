import 'package:flutter/material.dart';

class firstSectionWidget extends StatelessWidget {
  final String menuText;
  // final void Function() menuAction;
  final IconData? menuIcon;
  final bool menuIconControl;
  final isPressed = false;

  firstSectionWidget({
    required this.menuText,
    // required this.menuAction,
    this.menuIcon,
    this.menuIconControl = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget iconIndicater;
    if (menuIconControl == true) {
      iconIndicater = Icon(
        menuIcon,
        color: Colors.black,
        size: 14,
      );
    } else {
      iconIndicater = const SizedBox();
    }

    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0, right: 8),
        child: OutlinedButton(
          // onPressed: menuAction,
          onPressed: () {},
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
          child: Row(
            children: [
              //  menuIconControl?
              iconIndicater,
              Padding(
                padding: EdgeInsets.all(1),
                child: Text(
                  menuText,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
