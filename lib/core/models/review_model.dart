// core/models/review_model.dart

import 'package:fruits_app/core/entitis/review_entity.dart';

class ReviewModel {
  final String name;
  final String image ;
  final num rating;
  final String date;
  final String reviewDescription;

  ReviewModel({required this.name, 
  required this.image,
  required this.rating,
  required this.date, 
  required this.reviewDescription});
  
  factory ReviewModel.fromEntity(ReviewEntity reviewentity){
return ReviewModel(name: reviewentity.name,
 image: reviewentity.image,
  rating: reviewentity.rating,
   date: reviewentity.date, 
reviewDescription: reviewentity.reviewDescription);
  }
  
  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
        name: json['name'],
        image: json['image'],
        rating: json['ratting'],
        date: json['date'],
        reviewDescription: json['reviewDescription']);
  }
 ReviewEntity toEntity(){
    return ReviewEntity(name: name,
     image: image,
      rating: rating,
       date: date,
        reviewDescription: reviewDescription);
  }


  toJson(){
    return {
      'name':name,
      'image':image,
      'rating':rating,
      'date':date,
    'reviewDescription':reviewDescription
    
  };
}
}