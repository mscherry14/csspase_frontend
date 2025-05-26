import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/simple_response.dart';
import '../model/product.dart';
import '../repositories/product_repository.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _repository;

  ProductBloc(this._repository)
      : super(
    const ProductState(
      products: [],
    ),
  ) {
    on<ProductEvent>((event, emit) async => switch (event) {
      ProductReload() => await _reloadProduct(event, emit),
      ProductStarted() => await _started(event, emit),
    });
  }

  Future<void> _reloadProduct(ProductReload event, Emitter emit) async {
    final state = this.state;
    final result = await _repository.getProducts();
      switch (result) {
        case SimpleOkResponse(:final payload):
          emit(ProductState(products: payload ?? state.products));
        case SimpleErrorResponse(:final message, :final payload):
          emit(
            ProductState.error(
              products: payload ?? state.products,
              errorMessage: message,
            ),
          );
      }
  }

  _started(ProductEvent event, Emitter<ProductState> emit) async {
    await _reloadProduct(ProductReload(), emit);
  }
}
