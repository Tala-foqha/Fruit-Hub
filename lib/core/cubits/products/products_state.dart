// core/cubits/products/products_state.dart
part of 'products_cubit.dart';

@immutable
abstract class ProductsState {}

class ProductsInitial extends ProductsState {}
class ProductsLoading extends ProductsState {}
class ProductsSuccess extends ProductsState {
  final List<ProductEntity>products;

  ProductsSuccess({required this.products});
}
class ProductsFailure extends ProductsState {
  final String message;

  ProductsFailure({required this.message});
}





