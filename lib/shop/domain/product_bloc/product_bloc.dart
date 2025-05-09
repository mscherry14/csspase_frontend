import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/simple_response.dart';
import '../model/product.dart';
import '../product_repository.dart';

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
    on<ProductEvent>((event, emit) => switch (event) {
      ProductReload() => _reloadProduct(event, emit),
      ProductStarted() => _started(event, emit),
      ProductEvent() => throw UnimplementedError(), //??? todo: wtf
    });
  }

  void _reloadProduct(ProductReload event, Emitter emit) {
    final state = this.state;
    _repository.getProducts().then((result) {
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
    });
  }

  _started(ProductEvent event, Emitter<ProductState> emit) {
    _reloadProduct(ProductReload(), emit);
  }
}
