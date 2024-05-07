import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class firstSectionWidget extends StatelessWidget {
  final String menuText;
  final void Function() menuAction;

  firstSectionWidget({
    required this.menuText,
    required this.menuAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: OutlinedButton(
          onPressed: menuAction,
          style: OutlinedButton.styleFrom(
            // backgroundColor: Colors.grey,
            side: BorderSide(color: Colors.grey),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  menuText,

                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.right,
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
      child: Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                pictur,
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 7,
                fit: BoxFit.fill,
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
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
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
                    child: Image.asset(
                      frimOutImage,
                      width: MediaQuery.of(context).size.width / 1,
                      height: MediaQuery.of(context).size.height / 3.6,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(FrimOutText,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w700)),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            color: const Color.fromARGB(255, 232, 209, 2),
                            size: 17,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2),
                            child: Text(FrimOutRateText,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
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
                      "\ day",
                      style: TextStyle(
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
