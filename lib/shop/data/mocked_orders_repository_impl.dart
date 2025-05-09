import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:csspace_app/shop/domain/model/status_enum.dart';

import '../domain/model/order.dart';
import '../domain/order_repository.dart';

class SimpleOrderRepositoryImpl implements OrderRepository {
  @override
  Future<SimpleOkResponse<List<Order>>> getOrders() async {
    return SimpleOkResponse(
      payload: List.generate(
        21,
        (index) => Order(
            id: '$index',
            name: 'заказ такой-то ${index + 1}',
            status: index % 3 == 0 ? StatusEnum.completed : StatusEnum.waiting,
            orderDate: DateTime(2025),
            price: index * 5),
      ),
    );
  }
}
