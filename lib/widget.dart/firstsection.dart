import 'package:cartrack_application/widget.dart/assets.dart';
import 'package:cartrack_application/widget.dart/bottomNav.dart';
import 'package:cartrack_application/widget.dart/firstSectionWidget.dart';
import 'package:flutter/material.dart';

class firstSection extends StatelessWidget {
  const firstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              child: Row(children: [
                firstSectionWidget(
                  menuIconControl: true,
                  menuIcon: Icons.tune,
                  menuText: "All filtter",
                  menuAction: () {},
                ),
                firstSectionWidget(
                  menuIconControl: false,
                  menuText: "\$200-\$1,000 / day ",
                  menuAction: () {},
                ),
                firstSectionWidget(
                  menuText: "Brand",
                  menuAction: () {},
                ),
                firstSectionWidget(
                  menuText: "Body",
                  menuAction: () {},
                ),
                firstSectionWidget(
                  menuText: "Model",
                  menuAction: () {},
                ),
              ]),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Row(
                    children: [
                      FirstSectionImages(
                        pictur: sports,
                        imageText: "Sports",
                        imageEndText: "78",
                      ),
                      const Divider(
                        endIndent: 10,
                      ),
                      FirstSectionImages(
                        pictur: electric,
                        imageText: "Electric",
                        imageEndText: "304",
                      ),
                      const Divider(
                        endIndent: 10,
                      ),
                      FirstSectionImages(
                        pictur: legends,
                        imageText: "Legends",
                        imageEndText: "47",
                      ),
                      const Divider(
                        endIndent: 10,
                      ),
                      FirstSectionImages(
                        pictur: classsic,
                        imageText: "Classsic",
                        imageEndText: "101",
                      ),
                      const Divider(
                        endIndent: 10,
                      ),
                      FirstSectionImages(
                        pictur: audiR8,
                        imageText: "Top",
                        imageEndText: "10",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
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
                          padding: EdgeInsets.only(left: 5),
                          child: Text("Popular",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Icon(
                          Icons.tune_outlined,
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
                    children: [
                      firstFrimOut(
                        frimOutImage: audiR8,
                        FrimOuticon: Icons.audio_file,
                        FrimOutText: "Audi R8 Performance",
                        FrimOutAction: () {},
                        FrimOutRateText: "5.0",
                        FrimCarRate: "\$800",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: firstFrimOut(
                          frimOutImage: classicto,
                          FrimOuticon: Icons.audio_file,
                          FrimOutText: "Audi R8 Performance",
                          FrimOutAction: () {},
                          FrimOutRateText: "5.0",
                          FrimCarRate: "\$800",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: firstFrimOut(
                          frimOutImage: koeg,
                          FrimOuticon: Icons.audio_file,
                          FrimOutText: "Audi R8 Performance",
                          FrimOutAction: () {},
                          FrimOutRateText: "5.0",
                          FrimCarRate: "\$800",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: firstFrimOut(
                          frimOutImage: sports,
                          FrimOuticon: Icons.audio_file,
                          FrimOutText: "Audi R8 Performance",
                          FrimOutAction: () {},
                          FrimOutRateText: "5.0",
                          FrimCarRate: "\$800",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
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
                "one";
              },
            ),
            Spacer(),
            BottomNav(
              NavIcon: Icons.favorite,
              NavText: "FAVORIE",
               NavAction: () {
                "one";
              },
            ),
            Spacer(),
            BottomNav(
              NavIcon: Icons.chat,
              NavText: "CHAT",
               NavAction: () {
                "one";
              },
            ),
            Spacer(),
            BottomNav(
              NavIcon: Icons.person,
              NavText: "PROFILE",
               NavAction: () {
                "one";
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
