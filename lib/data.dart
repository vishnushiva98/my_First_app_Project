// import 'package:cartrack_application/widget.dart/assets.dart';
// import 'package:flutter/material.dart';

// List<CarModel> cars = [
//   CarModel(
//     carName: 'Sports',
//     carImage: sports,
//   ),
//    CarModel(
//     carName: 'Electric',
//     carImage: electric,
//   ),
// ];

// class CarModel {
//   final String carName;
//   final String carImage;

//   CarModel({
//     required this.carName,
//     required this.carImage,
//   });

// }

import 'package:cartrack_application/widget.dart/assets.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

class CarModels {
  final String carImage;
  final String carNAme;
  final String carcount;
  final String carBrandName;
  final String carRate;
  final String carRating;
  final String carBrandImage;
  final String carRateFiltter;
  final IconData carFiltterIcon;
  final bool carFiltterIconCntoler;

  // final String filtterText;
  // final IconData filtterIcon;

  CarModels({
    required this.carImage,
    required this.carNAme,
    required this.carcount,
    required this.carBrandName,
    required this.carRate,
    required this.carRating,
    required this.carBrandImage,
    required this.carRateFiltter,
    required this.carFiltterIcon,
    required this.carFiltterIconCntoler
    //  required this.filtterText,
    // required this.filtterIcon,
  });
}

List<CarModels> Cars = [
  CarModels(
    carNAme: "Sports",
    carcount: "78",
    carImage: sports,
    carBrandName: 'Audi R8 Performance',
    carRate: '5.0',
    carRating: '\$800',
    carBrandImage: audiR8,
    carRateFiltter: "All filtter",
    carFiltterIcon: Icons.tune,
    carFiltterIconCntoler: true
  ),
  CarModels(
    carImage: electric,
    carNAme: "Electric",
    carcount: "304",
    carBrandName: 'Audi R8 Performance',
    carRate: '5.0',
    carRating: '\$800',
    carBrandImage: classicto,
    carRateFiltter: "\$200-\$1000/day",
    carFiltterIcon: Icons.tune,
    carFiltterIconCntoler: false
  ),
  CarModels(
    carImage: legends,
    carNAme: "Legends",
    carcount: "47",
    carBrandName: 'Audi R8 Performance',
    carRate: '5.0',
    carRating: '\$800',
    carBrandImage: koeg,
    carRateFiltter: "Brand",
    carFiltterIcon: Icons.tune,
    carFiltterIconCntoler: false
  ),
  CarModels(
    carImage: classsic,
    carNAme: "classic",
    carcount: "101",
    carBrandName: 'Audi R8 Performance',
    carRate: '5.0',
    carRating: '\$800',
    carBrandImage: merc,
    carRateFiltter: "Body",
    carFiltterIcon: Icons.tune,
    carFiltterIconCntoler: false
  ),
  CarModels(
    carImage: audiR8,
    carNAme: "Top 10",
    carcount: "10",
    carBrandName: 'Audi R8 Performance',
    carRate: '5.0',
    carRating: '\$800',
    carBrandImage: audiR8,
    carRateFiltter: " Model",
    carFiltterIcon: Icons.tune,
    carFiltterIconCntoler: false
  ),
];
