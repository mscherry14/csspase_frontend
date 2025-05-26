import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:dio/dio.dart';

import '../domain/model/product.dart';
import '../domain/repositories/product_repository.dart';


class ProductRepositoryImpl implements ProductRepository {
  final Dio dio;
  final CancelToken? cancelToken;

  ProductRepositoryImpl({required this.dio, this.cancelToken});
  @override
  Future<SimpleResponse<List<Product>>> getProducts() async {
    try {
      final res = await dio.get('/user/products');
      if (res.statusCode == 200) {
        final List<Product> products = [];
        for (final elem in res.data) {
          products.add(Product.fromJson(elem));
        }
        return SimpleOkResponse(payload: products);
      }
      return SimpleErrorResponse(
        message: 'getting products error: неизветсная ошибка',
        payload: [],
      );
    } catch (e) {
      return SimpleErrorResponse(
        message: "getting products error: ${e.toString()}",
        payload: [],
      );
    }
  }
}
