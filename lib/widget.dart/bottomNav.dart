import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final IconData NavIcon;
  final String NavText;
  final void Function() NavAction;

  BottomNav({
    required this.NavIcon,
    required this.NavText,
    required this.NavAction,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: NavAction,
        child: Column(
          children: [
            Icon(
              NavIcon,
              color: Colors.black,
              size: 25,
            ),
            Text(
              NavText,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
