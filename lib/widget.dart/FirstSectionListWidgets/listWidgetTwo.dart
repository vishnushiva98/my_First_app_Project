import 'package:flutter/material.dart';





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