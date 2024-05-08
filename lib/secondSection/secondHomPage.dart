import 'package:cartrack_application/secondSection/widgetSecond.dart';
import 'package:cartrack_application/widget.dart/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondHomePage extends StatelessWidget {
  const SecondHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        FirstFunction(),
        Container(
          padding: EdgeInsets.only(left: 20, top: 25),
          width: MediaQuery.of(context).size.width / 1,
          height: 415,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white),
          child: Column(
            children: [
              CarHeder(
                carText: "Audi R8 Performance",
                carFontColor: Colors.black,
                carFontSize: 20,
                carFontWeight: FontWeight.bold,
              ),
              CarHeder(
                carText: "Car rating: 110/100",
                carFontColor: Colors.black,
                carFontSize: 12,
                carFontWeight: FontWeight.w500,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(cd),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 143.0, top: 10, bottom: 3),
                                    child: CarHeder(
                                      carText: "DreamCar Agency",
                                      carFontColor: Colors.black,
                                      carFontSize: 14,
                                      carFontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 206, 176, 3),
                                          size: 17,
                                        ),
                                        CarHeder(
                                          carText: "5.0 ",
                                          carFontColor: Colors.black,
                                          carFontSize: 13,
                                          carFontWeight: FontWeight.bold,
                                        ),
                                        Container(
                                          width: 3,
                                          height: 3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.black,
                                          ),
                                        ),
                                        CarHeder(
                                          carText: " 14 reviews",
                                          carFontColor: Colors.grey,
                                          carFontSize: 13,
                                          carFontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 65.0),
                                    child: Row(
                                      children: [
                                        CarHeder(
                                          carText: " Rental rules",
                                          carFontColor: Colors.black,
                                          carFontSize: 13,
                                          carFontWeight: FontWeight.w500,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.black,
                                          size: 11,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: CarHeder(
                      carText: " Technical specification",
                      carFontColor: Colors.black,
                      carFontSize: 18,
                      carFontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    secondSectionWidget(
                      btuAction: () {
                        print("toootoo");
                      },
                      btuText: "Engine",
                      btutwoText: "610 hp,5.2 l",
                    ),
                    secondSectionWidget(
                      btuAction: () {
                        print("toootoo");
                      },
                      btuText: "0-100 km/h",
                      btutwoText: "3.2 s",
                    ),
                    secondSectionWidget(
                      btuAction: () {
                        print("toootoo");
                      },
                      btuText: "Drive",
                      btutwoText: "All-wheel",
                    ),
                    secondSectionWidget(
                      btuAction: () {
                        print("toootoo");
                      },
                      btuText: "Engine",
                      btutwoText: "610 hp,5.2 l",
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }

  Widget FirstFunction() {
    return Container(
      // height: MediaQuery.of(context).size.width / 0.9,
      height: 437,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                audiR8Back,
              ),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          ImageIconFor(
            ImageIcon: Icons.arrow_back_ios,
            ImageLeft: 20,
            ImageTop: 30,
          ),
          ImageIconFor(
            ImageIcon: Icons.upload,
            ImageLeft: 350,
            ImageTop: 30,
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Text(
              "3/24",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
