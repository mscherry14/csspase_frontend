import 'package:csspace_app/common/utils/simple_response.dart';

abstract interface class BalanceRepository {
  Future<SimpleResponse<int>> getBalance();
}
