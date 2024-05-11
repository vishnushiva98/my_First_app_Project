// // Define the model class
// import 'package:cartrack_application/widget.dart/FirstSectionListWidgets/listWidgetTwo.dart';
// import 'package:cartrack_application/widget.dart/assets.dart';

// import 'package:flutter/material.dart';

// // class Section {
// //   final String imageText;
// //   final String imageEndText;

// //   Section({required this.imageText, required this.imageEndText});
// // }

// // // Create a list of data using the model
// // List<Section> sections = [
// //   Section(imageText: "Sports", imageEndText: "78" images:"assets/images/sports.jpg"),
// //   Section(imageText: "Electric", imageEndText: "304" image: "assets/images/legends.jpg"),
// //   Section(imageText: "Legends", imageEndText: "47"),
// //   Section(imageText: "Classic", imageEndText: "101"),
// //   // Add more sections as needed
// // ];

// // Define the model class
// class Section {
//   final String imageText;
//   final String imageEndText;
//   final String image;

//   Section(
//       {required this.imageText,
//       required this.imageEndText,
//       required this.image});
// }

// // Create a list of data using the model
// List<Section> sections = [
//   Section(imageText: "Sports", imageEndText: "78", image: sports),
//   Section(imageText: "Electric", imageEndText: "304", image: electric),
//   // Add more sections as needed
// ];

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: ItemWidget(),
//       ),
//     );
//   }
// }

// class ItemWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Column(
//         children: [
//           // Your widget code using SingleChildScrollView and Row
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: sections.map((section) {
//                 return Row(
//                   children: [
//                     FirstSectionImages(
//                       pictur: section.image,
//                       imageText: section.imageText,
//                       imageEndText: section.imageEndText,
//                     ),
//                     const Divider(
//                       endIndent: 10,
//                     ),
//                   ],
//                 );
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }












// // import 'package:flutter/material.dart';

// // // Step 1: Define a model class
// // class Item {
// //   final String name;
// //   final IconData icon;
// //   final bool isActive;
// //   final bool menuIconControl;

// //   Item(this.name, this.icon, this.isActive, this.menuIconControl);
// // }

// // // Step 2: Create a list of instances of the model class
// // List<Item> items = [
// //   Item("All filter", Icons.tune, true),
// //   Item("\$200-\$1,000 / day", Icons.tune, false),
// //   Item("Brand", Icons.tune, false),
// //   Item("Body", Icons.tune, false),
// //   Item("Model", Icons.tune, false),
// // ];

// // // Step 3: Use widgets to display the data
// // class ItemWidget extends StatelessWidget {
// //   final Item item;

// //   ItemWidget(this.item);

// //   @override
// //   Widget build(BuildContext context) {
// //     Widget iconIndicater;
// //     // bool menuIconControl =;
// //     if (menuIconControl == true) {
// //       iconIndicater = Icon(
// //         item.icon,
// //         color: Colors.black,
// //         size: 14,
// //       );
// //     } else {
// //       iconIndicater = const SizedBox();
// //     }
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
// //       child: Row(
// //         children: [
// //           // Icon(item.icon),
// //           SizedBox(width: 4),
// //           Text(item.name),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('List of Items'),
// //         ),
// //         body: SingleChildScrollView(
// //           scrollDirection: Axis.horizontal,
// //           child: Row(
// //             children: items.map((item) => ItemWidget(item)).toList(),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
