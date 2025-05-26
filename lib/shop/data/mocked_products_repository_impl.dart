import 'package:csspace_app/common/utils/simple_response.dart';

import '../domain/model/product.dart';
import '../domain/repositories/product_repository.dart';


class SimpleProductRepositoryImpl implements ProductRepository {
  @override
  Future<SimpleOkResponse<List<Product>>> getProducts() async {
    return SimpleOkResponse(payload: List.generate(
        21,
        (index) => Product(productId: '$index', productName: 'какое-то название ${index + 1}', price: index * 5, ),),);
  }
}
