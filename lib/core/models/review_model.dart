// features/add_product/data/model/review_model.dart
import 'package:fruit_hub_dashboard/features/add_product/domain/entities/review_entity.dart';

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