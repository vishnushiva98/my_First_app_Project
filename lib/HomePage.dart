import 'package:cartrack_application/widget.dart/appBarButton.dart';
import 'package:cartrack_application/widget.dart/firstsection.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,

      appBar: AppBar(
        toolbarHeight: 105,
        backgroundColor: Colors.black,
        flexibleSpace: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //calling AppBarButton class for app button
              AppBarButton(
                barButtonSize: 215,
                barButton: Icons.location_on,
                buttonAction: () {
                  print("dooom");
                },
                barButtontext: "Los Angeles, California,U.S.",
              ),
              SizedBox(
                height: 0,
              ),
              //calling AppBarButton class for app button

              AppBarButton(
                barButtonSize: 255,
                barButton: Icons.calendar_month,
                buttonAction: () {
                  print("dooom");
                },
                barButtontext: "Sep 1,10.00 AM - Sep 3, 10.00 AM",
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: Colors.red,
        ),
        child: firstSection(),
      ),

      // body: ClipRRect(
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(50),
      //     topRight: Radius.circular(50),
      //   ),
      //   // child: firstSection(),
      // ),

      // Container(
      // width: double.infinity,
      // height: double.infinity,
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.only(
      //     topRight: Radius.circular(20),
      //     topLeft: Radius.circular(20),
      //   ),
      // ),

      // ),
    );
  }
}
