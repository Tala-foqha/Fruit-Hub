// features/add_product/domain/entities/add_product_input_entity.dart
import 'dart:io';

import 'package:fruit_hub_dashboard/features/add_product/domain/entities/review_entity.dart';

class AddProductInputEntity {
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


  AddProductInputEntity(   {required this.name,
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



