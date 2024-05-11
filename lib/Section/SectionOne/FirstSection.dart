import 'package:cartrack_application/data.dart';
import 'package:cartrack_application/widget.dart/FirstSectionListWidgets/appBarWidget.dart';
import 'package:cartrack_application/widget.dart/FirstSectionListWidgets/listWidgetThree.dart';
import 'package:cartrack_application/widget.dart/FirstSectionListWidgets/listWidgetTwo.dart';
import 'package:cartrack_application/widget.dart/FirstSectionListWidgets/listWidgetone.dart';
import 'package:cartrack_application/widget.dart/FirstSectionListWidgets/navBarWidget.dart';

import 'package:flutter/material.dart';

class FirstSectionHome extends StatefulWidget {
  const FirstSectionHome({super.key});

  @override
  State<FirstSectionHome> createState() => _FirstSectionHomeState();
}

class _FirstSectionHomeState extends State<FirstSectionHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            color: Colors.black,
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
          Container(
            padding: EdgeInsets.only(left: 15, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: Cars.map((cars) {
                      return Row(
                        children: [
                          firstSectionWidget(
                            menuText: cars.carRateFiltter,
                            menuIcon: cars.carFiltterIcon,
                            menuIconControl: cars.carFiltterIconCntoler,
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: Cars.map((cars) {
                      return Row(
                        children: [
                          FirstSectionImages(
                            pictur: cars.carImage,
                            imageText: cars.carNAme,
                            imageEndText: cars.carcount,
                          ),
                          const Divider(
                            endIndent: 10,
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "165 available",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 5, right: 3),
                              child: Text("Popular",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Icon(
                              Icons.layers_outlined,
                              color: Colors.black,
                              size: 13,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: Cars.map((cars) {
                          return Column(
                            children: [
                              firstFrimOut(
                                FrimCarRate: cars.carRating,
                                frimOutImage: cars.carBrandImage,
                                FrimOutText: cars.carBrandName,
                                FrimOutRateText: cars.carRate,
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        height: 75,
        color: Colors.white,
        child: Row(
          children: [
            BottomNav(
              NavIcon: Icons.search,
              NavText: "SEARCH",
              NavAction: () {
                print("one");
              },
            ),
            Spacer(),
            BottomNav(
              NavIcon: Icons.favorite_border_outlined,
              NavText: "FAVORIE",
              NavAction: () {
                print("one");
              },
            ),
            Spacer(),
            BottomNav(
              NavIcon: Icons.chat_bubble_outline,
              NavText: "CHAT",
              NavAction: () {
                print("one");
              },
            ),
            Spacer(),
            BottomNav(
              NavIcon: Icons.person_2_outlined,
              NavText: "PROFILE",
              NavAction: () {
                print("one");
              },
            ),
          ],
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.red,
      //   selectedItemColor: Colors.black,
      //   unselectedItemColor: Colors.black,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'SEARCH'),
      //     BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'FAVORIE'),
      //     BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'CHAT'),
      //     // BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'CHAT'),
      //     // BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'PROFILE'),
      //   ],
      // ),
    );
  }
}


// FirstSectionMenu(
//   String firstButton,
//   IconData firstIcon,
//   bool firstIconControl,
//   // void Function()? FirstActionColor,
//   // bool isPressed,
// ) {
//   Widget firstIndicator;
//   if (firstIconControl == true) {
//     firstIndicator = Icon(
//       firstIcon,
//       color: Colors.black,
//       size: 14,
//     );
//   } else {
//     firstIndicator = SizedBox();
//   }
//   return Container(
//     child: Padding(
//       padding: const EdgeInsets.only(
//         bottom: 15.0,
//         right: 8,
//       ),
//       child: OutlinedButton(
//         onPressed: () {},
//         style: OutlinedButton.styleFrom(
//           padding: const EdgeInsets.only(right: 10, left: 10),
//           side: const BorderSide(color: Colors.grey, width: 1.5),
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//         ),
//         child: Row(
//           children: [
//             firstIndicator,
//             Padding(
//               padding: const EdgeInsets.all(2),
//               child: Text(
//                 firstButton,
//                 style: const TextStyle(
//                     fontSize: 12,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w600),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
