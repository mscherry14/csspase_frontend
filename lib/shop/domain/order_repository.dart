import 'package:csspace_app/common/utils/simple_response.dart';

import 'model/order.dart';

abstract interface class OrderRepository {
  Future<SimpleResponse<List<Order>>> getOrders(); //todo: auth credentials?
}
