// // import 'package:flutter/material.dart';

// // class ButtonStateFull extends StatefulWidget {
// //   const ButtonStateFull({super.key});

// //   @override
// //   State<ButtonStateFull> createState() => _ButtonStateFullState();
// // }

// // class _ButtonStateFullState extends State<ButtonStateFull> {
// //   final String firstButton;
// //   final IconData firstIcon;
// //   final bool firstIconControl;

// //   _ButtonStateFullState({
// //     required this.firstIcon,
// //     required this.firstIconControl,
// //     required this.firstButton,
// //   });
// //   @override
// //   Widget build(BuildContext context) {
// //     Widget firstIndicater;
// //     if (firstIconControl == true) {
// //       firstIndicater = Icon(
// //         firstIcon,
// //         color: Colors.black,
// //         size: 14,
// //       );
// //     } else {
// //       firstIndicater = const SizedBox();
// //     }
// //     return Container(
// //       child: Padding(
// //         padding: const EdgeInsets.only(bottom: 15.0, right: 8),
// //         child: OutlinedButton(
// //           // onPressed: menuAction,
// //           onPressed: () {},
// //           style: OutlinedButton.styleFrom(
// //             // backgroundColor: Colors.grey,

// //             padding: EdgeInsets.only(
// //               right: 10,
// //               left: 10,
// //             ),
// //             side: BorderSide(color: Colors.grey, width: 1.5),
// //             shape: RoundedRectangleBorder(
// //                 borderRadius: BorderRadius.circular(10.0)),
// //           ),
// //           child: Row(
// //             children: [
// //               //  menuIconControl?
// //               firstIndicater,
// //               Padding(
// //                 padding: EdgeInsets.all(2),
// //                 child: Text(
// //                   firstButton,
// //                   style: TextStyle(
// //                       fontSize: 12,
// //                       color: Colors.black,
// //                       fontWeight: FontWeight.w600),
// //                   textAlign: TextAlign.center,
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class ButtonStateFull extends StatefulWidget {
//   const ButtonStateFull({Key? key}) : super(key: key);

//   @override
//   State<ButtonStateFull> createState() => _ButtonStateFullState();
// }

// class _ButtonStateFullState extends State<ButtonStateFull> {
//   late final String firstButton;
//   late final IconData firstIcon;
//   late final bool firstIconControl;

//   @override
//   void initState() {
//     super.initState();
//     firstButton = "YourDefaultButtonText"; // Provide default text here
//     firstIcon = Icons.ac_unit; // Provide default icon here
//     firstIconControl = false; // Provide default value for icon control here
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget firstIndicator;
//     if (firstIconControl == true) {
//       firstIndicator = Icon(
//         firstIcon,
//         color: Colors.black,
//         size: 14,
//       );
//     } else {
//       firstIndicator = SizedBox();
//     }
//     return Container(
//       child: Padding(
//         padding: const EdgeInsets.only(bottom: 15.0, right: 8),
//         child: OutlinedButton(
//           onPressed: () {},
//           style: OutlinedButton.styleFrom(
//             padding: const EdgeInsets.only(right: 10, left: 10),
//             side: const BorderSide(color: Colors.grey, width: 1.5),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0)),
//           ),
//           child: Row(
//             children: [
//               firstIndicator,
//               Padding(
//                 padding: const EdgeInsets.all(2),
//                 child: Text(
//                   firstButton,
//                   style: const TextStyle(
//                       fontSize: 12,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w600),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
