import 'dart:math';

import 'package:csspace_app/common/utils/simple_response.dart';

import 'package:csspace_app/shop/domain/model/product.dart';

import '../domain/repositories/purchase_repository.dart';

class SimplePurchaseRepositoryImpl implements PurchaseRepository {
  @override
  Future<SimpleResponse<Null>> buyProduct(String productId) async {
    if (Random().nextBool()) {
      return SimpleOkResponse(payload: null);
    } else {
      return SimpleErrorResponse(message: 'случайно ошибка', payload: null);
    }
  }

  @override
  Future<SimpleResponse<Product>> getProductById(String productId) async {
    return SimpleOkResponse(
      payload: Product(
          productId: productId,
          productName: 'какое-то название ${int.parse(productId) + 1}',
          price: int.parse(productId) * 5,
      ),
    );
  }
}
