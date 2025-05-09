part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    required List<Product> products,
  }) = _ProductState;

  const factory ProductState.error({
    required List<Product> products,
    required String errorMessage,
  }) = _ProductErrorState;
}
