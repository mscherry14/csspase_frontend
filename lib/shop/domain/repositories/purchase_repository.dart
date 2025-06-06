import '../../../common/utils/simple_response.dart';
import '../model/product.dart';

abstract interface class PurchaseRepository {
  Future<SimpleResponse<Product>> getProductById(String productId);
  Future<SimpleResponse<Null>> buyProduct(String productId, {required String idempotencyKey});
}
