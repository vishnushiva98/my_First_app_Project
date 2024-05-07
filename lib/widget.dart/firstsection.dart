import 'package:cartrack_application/widget.dart/assets.dart';
import 'package:cartrack_application/widget.dart/firstSectionWidget.dart';
import 'package:flutter/material.dart';

class firstSection extends StatelessWidget {
  const firstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        // backgroundColor: Colors.grey,
                        side: BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 2.0),
                              child: Icon(
                                Icons.tune,
                                color: Colors.black,
                                size: 14,
                              ),
                            ),
                            Text(
                              "All filtter",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  firstSectionWidget(
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
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
    );
  }
}
