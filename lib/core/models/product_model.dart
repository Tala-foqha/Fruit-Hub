// core/models/product_model.dart
import 'dart:io';

import 'package:fruits_app/core/entitis/product_entity.dart';
import 'package:fruits_app/core/models/review_model.dart';


class ProductModel {
  final String name, code, description;
  final num price;
  //final String imageUrl;
  final bool isFeatured;
  final num expirationsMonthd;
  final bool isOrganic;
  final num numberOfCalories;
  final num unitAmount;
  final num avgRating;
  final List<ReviewModel> reviews;
  final num sellingCount;

  ProductModel({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.sellingCount,
    //required this.imageUrl,
    required this.isFeatured,
    required this.expirationsMonthd,
    required this.isOrganic,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.avgRating,
    required this.reviews,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      code: json['code'],
      description: json['description'],
      price: json['price'],
      sellingCount: json['sellingCount'],
      //imageUrl: json['imageUrl'],
      isFeatured: json['isFeatured'],
      expirationsMonthd: json['expirationsMonthd'],
      isOrganic: json['isOrganic'],
      numberOfCalories: json['numberOfCalories'],
      unitAmount: json['unitAmount'],
      avgRating: json['avgRating'],
      reviews: json['reviews'] != null
          ? List<ReviewModel>.from(
              json['reviews'].map((e) => ReviewModel.fromJson(e)))
          : [],
    );
  }

ProductEntity toEntity(){
    return ProductEntity(name: name,
     code: code, 
     description: description, 
     price: price,
      isFeatured: isFeatured,
      expirationsMonthd: expirationsMonthd, 
      isOrganic: isOrganic,
       numberOfCalories: numberOfCalories,
        unitAmount: unitAmount,
         avgRating: avgRating,
          reviews: reviews.map((e)=>e.toEntity()).toList()
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'sellingCount': sellingCount,
      //'imageUrl': imageUrl,
      'isFeatured': isFeatured,
      'expirationsMonthd': expirationsMonthd,
      'isOrganic': isOrganic,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'avgRating': avgRating,
      'reviews': reviews.map((e) => e.toJson()).toList(),
    };
  }
}
