import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:csspace_app/shop/domain/model/product.dart';
import 'package:dio/dio.dart';

import '../domain/repositories/purchase_repository.dart';

class PurchaseRepositoryImpl implements PurchaseRepository {
  final Dio dio;
  final CancelToken? cancelToken;

  PurchaseRepositoryImpl({required this.dio, this.cancelToken});

  @override
  Future<SimpleResponse<Null>> buyProduct(
    String productId, {
    required String idempotencyKey,
  }) async {
    try {
      final res = await dio.post(
        '/user/orders/$productId',
        options: Options(headers: {'Idempotency-Key': idempotencyKey}),
      );
      if (res.statusCode == 200) {
        return SimpleOkResponse(payload: null);
      }
      return SimpleErrorResponse(
        message: 'getting products error: неизветсная ошибка',
        payload: null,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 402) {
        return SimpleErrorResponse(
          message: "Недостаточно средств",
          payload: null,
        );
      } else {
        rethrow;
      }
    } catch (e) {
      return SimpleErrorResponse(
        message: "getting products error: ${e.toString()}",
        payload: null,
      );
    }
  }

  @override
  Future<SimpleResponse<Product>> getProductById(String productId) async {
    try {
      final res = await dio.get('/user/products/$productId');
      if (res.statusCode == 200) {
        return SimpleOkResponse(payload: Product.fromJson(res.data));
      }
      return SimpleErrorResponse(
        message: 'getting products error: неизветсная ошибка',
        payload: null,
      );
    } catch (e) {
      return SimpleErrorResponse(
        message: "getting products error: ${e.toString()}",
        payload: null,
      );
    }
  }
}
