// core/entitis/product_entity.dart
import 'dart:io';

import 'package:fruits_app/core/entitis/review_entity.dart';

class ProductEntity {
  final String name,code,description;
  final num price;
  //  File ?image;
  final bool isFeatured;
  // String? imageUrl;
  final num expirationsMonthd;
  bool isOrganic=false;
  final num numberOfCalories;
  final num unitAmount;
  final num avgRating;
  final List<ReviewEntity>reviews;


  ProductEntity(   {required this.name,
   required this.code, 
   required this.description, 
    required this.price, 
    //required this.image,
   required this.isFeatured,
  //  this.imageUrl,
   required this.expirationsMonthd,
   required this.isOrganic,
   required this.numberOfCalories,
   required  this.unitAmount,
   required this.avgRating,
   required this.reviews
   });
}



