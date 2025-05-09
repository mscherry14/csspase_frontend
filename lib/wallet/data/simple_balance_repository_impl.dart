import 'package:csspace_app/common/utils/simple_response.dart';

import '../domain/balance_repository.dart';

class SimpleBalanceRepositoryImpl implements BalanceRepository {
  @override
  Future<SimpleResponse<int>> getBalance() async {
    return SimpleOkResponse(payload: 500);
  }
}