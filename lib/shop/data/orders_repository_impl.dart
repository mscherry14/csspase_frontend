import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:dio/dio.dart';

import '../domain/model/order.dart';
import '../domain/order_repository.dart';

class OrderRepositoryImpl implements OrderRepository {
  final Dio dio;
  final CancelToken? cancelToken;

  OrderRepositoryImpl({required this.dio, this.cancelToken});
  @override
  Future<SimpleResponse<List<Order>>> getOrders() async {
    try {
      final res = await dio.get('/user/orders');
      if (res.statusCode == 200) {
        final List<Order> orders = [];
        for (final elem in res.data) {
          orders.add(Order.fromJson(elem));
        }
        return SimpleOkResponse(payload: orders);
      }
      return SimpleErrorResponse(
        message: 'getting orders error: неизветсная ошибка',
        payload: [],
      );
    } catch (e) {
      return SimpleErrorResponse(
        message: "getting orders error: ${e.toString()}",
        payload: [],
      );
    }
  }
}
