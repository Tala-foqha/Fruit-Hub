// core/repos/products_repo/products_repo.dart
import 'package:dartz/dartz.dart';
import 'package:fruits_app/core/entitis/product_entity.dart';
import 'package:fruits_app/core/errors/failures.dart';

abstract class ProductsRepo {
  Future<Either<Failure,List<ProductEntity>>>getProducts();
  Future<Either<Failure,List<ProductEntity>>>getBestSellingProducts();

 
}