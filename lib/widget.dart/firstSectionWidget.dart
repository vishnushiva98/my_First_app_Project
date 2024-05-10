import 'package:cartrack_application/widget.dart/assets.dart';
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
                padding: EdgeInsets.all(2),
                child: Text(
                  menuText,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SpaceGrotesk',
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

class FirstSectionImages extends StatelessWidget {
  final String pictur;
  final String imageText;
  final String imageEndText;

  FirstSectionImages({
    required this.pictur,
    required this.imageText,
    required this.imageEndText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                pictur,
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 7,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Divider(
            height: 8,
          ),
          Row(
            children: [
              Text(
                imageText,
                style: TextStyle(
                    fontFamily: 'SpaceGrotesk',
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Text(
                  imageEndText,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class firstFrimOut extends StatelessWidget {
  final String frimOutImage;
  final String FrimOutText;
  final IconData FrimOuticon;
  final void Function()? FrimOutAction;
  final String FrimOutRateText;
  final String FrimCarRate;

  firstFrimOut({
    required this.FrimCarRate,
    required this.frimOutImage,
    required this.FrimOutText,
    required this.FrimOuticon,
    required this.FrimOutAction,
    required this.FrimOutRateText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 11.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/secondhomepage');
                      },
                      child: Image.asset(
                        frimOutImage,
                        width: MediaQuery.of(context).size.width / 1,
                        height: MediaQuery.of(context).size.height / 3.6,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(FrimOutText,
                            style: TextStyle(
                                fontFamily: 'SpaceGrotesk',
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1.0),
                              child: Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(cd),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: const Color.fromARGB(255, 206, 176, 3),
                                size: 17,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2),
                                child: Text(FrimOutRateText,
                                    style: TextStyle(
                                        fontFamily: 'SpaceGrotesk',
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      FrimCarRate,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      " / day",
                      style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
