// features/add_product/data/model/add_product_model.dart
import 'dart:io';

import 'package:fruit_hub_dashboard/features/add_product/data/model/review_model.dart';
import 'package:fruit_hub_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';
import 'package:fruit_hub_dashboard/features/add_product/domain/entities/review_entity.dart';

class AddProductModel {
  final String name,code,description;
  final num price;
  // File ?image;
  final bool isFeatured;
 // String? imageUrl;
  final num expirationsMonthd;
  bool isOrganic=false;
  final num numberOfCalories;
  final num unitAmount;
  final num avgRating;
 final List<ReviewModel>reviews;


  AddProductModel(  {required this.name, 
  required this.code, 
  required this.description,
   required this.price, 
   //required this.image,
   required this.isFeatured, 
   // this.imageUrl,
    required this.expirationsMonthd,
    required this.isOrganic,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.avgRating,
    required this.reviews
    
    });
    factory  AddProductModel.formEntity(AddProductInputEntity addProductInputEntity){
      return AddProductModel(name: addProductInputEntity.name,
       code: addProductInputEntity.code, 
       description: addProductInputEntity.description, 
       price: addProductInputEntity.price,
        //image: addProductInputEntity.image,
       isFeatured: addProductInputEntity.isFeatured,
     //  imageUrl: addProductInputEntity.imageUrl,
       reviews: addProductInputEntity.reviews.map((e)=>
        ReviewModel.fromEntity(e)
       ).toList(),

        expirationsMonthd: addProductInputEntity.expirationsMonthd, 
        isOrganic: addProductInputEntity.isOrganic,
         numberOfCalories: addProductInputEntity.numberOfCalories,
          unitAmount: addProductInputEntity.unitAmount,
           avgRating: addProductInputEntity.avgRating, 
         
        
        );
    }
    toJson(){
    return {
     'name':name,
     'code':code,
     'ddescription':description,
     'price':price,
    // "image":image,
     'isFeatured':isFeatured,
     'expirationsMonthd':expirationsMonthd,
     'isOrganic':isOrganic,
     //'imageUrl':imageUrl,
     'numberOfCalories':numberOfCalories,
     'avgRating':avgRating,
     'reviews':reviews.map((e)=>e.toJson()).toList()



    };
}
}