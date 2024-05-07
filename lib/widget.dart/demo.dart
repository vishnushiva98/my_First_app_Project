// import 'package:cartrack_application/widget.dart/appBarButton.dart';
// import 'package:cartrack_application/widget.dart/firstSectionWidget.dart';
// import 'package:cartrack_application/widget.dart/firstsection.dart';
// import 'package:flutter/material.dart';


// class DemoApp extends StatelessWidget {
//   const DemoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             child: Column(
//               children: [
//                 AppBarButton(
//                   barButton: Icons.location_on,
//                   buttonAction: () {
//                     print("dooom");
//                   },
//                   barButtontext: "Los Angeles, California,U.S.",
//                 ),
//                 SizedBox(
//                   height: 0,
//                 ),
//                 //calling AppBarButton class for app button

//                 AppBarButton(
//                   barButton: Icons.calendar_month,
//                   buttonAction: () {
//                     print("dooom");
//                   },
//                   barButtontext: "Sep 1,10.00 AM - Sep 3, 10.00 AM",
//                 ),
//               ],
//             ),
//           ),
//           ClipRRect(
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20), topRight: Radius.circular(20)),
//             child: Container(
//               color: Colors.white,
//               child: firstSectionWidget(
//                 menuText: "\$200-\$1,000 / day ",
//                 menuAction: () {},
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
