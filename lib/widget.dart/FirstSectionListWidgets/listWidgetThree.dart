import 'package:cartrack_application/widget.dart/assets.dart';
import 'package:flutter/material.dart';

class firstFrimOut extends StatelessWidget {
  final String frimOutImage;
  final String FrimOutText;
  // final IconData FrimOuticon;
  // final void Function()? FrimOutAction;
  final String FrimOutRateText;
  final String FrimCarRate;

  firstFrimOut({
    required this.FrimCarRate,
    required this.frimOutImage,
    required this.FrimOutText,
    // required this.FrimOuticon,
    // required this.FrimOutAction,
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
                        Text(
                          FrimOutText,
                          style: TextStyle(
                            
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            
                          ),
                        ),
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
