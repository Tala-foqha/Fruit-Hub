// core/repos/products_repo/products_repo_impl.dart
import 'package:dartz/dartz.dart';
import 'package:fruits_app/core/entitis/product_entity.dart';
import 'package:fruits_app/core/errors/failures.dart';
import 'package:fruits_app/core/models/product_model.dart';
import 'package:fruits_app/core/repos/products_repo/products_repo.dart';
import 'package:fruits_app/core/services/data_base_services.dart';
import 'package:fruits_app/core/utils/backend_endpoint.dart';

class ProductsRepoImpl implements ProductsRepo{
  final DatabaseServices databaseServices;

  ProductsRepoImpl( {required this.databaseServices});
  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() async{
     try {
  var data=await databaseServices.getData(
    path: BackendEndpoint.getProducts,
    query: {
      'limit':10,
      'orderBy':'sellingCount',
      'descending':true
    }
    )
  as List<Map<String,dynamic>>;
  List<ProductModel>products=data.map((e)=>ProductModel.fromJson(e)).toList();
  List<ProductEntity>productEntity=products.map((e)=>
  e.toEntity()).toList();
  return Right(productEntity) ;
} on Exception catch (e) {
  return left(ServerFailure('Faild to get products'));
}
  }
  

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts()async {
   try {
  var data=await databaseServices.getData(path: BackendEndpoint.getProducts)
  as List<Map<String,dynamic>>;
  List<ProductModel>products=data.map((e)=>ProductModel.fromJson(e)).toList();
  List<ProductEntity>productEntity=products.map((e)=>
  e.toEntity()).toList();
  return Right(productEntity) ;
} on Exception catch (e) {
  return left(ServerFailure('Faild to get products'));
}
  }
}