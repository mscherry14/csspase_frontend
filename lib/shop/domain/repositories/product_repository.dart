import 'package:csspace_app/common/utils/simple_response.dart';

import '../model/product.dart';

abstract interface class ProductRepository {
  Future<SimpleResponse<List<Product>>> getProducts();
}
