import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:dio/dio.dart';

import '../domain/balance_repository.dart';

class BalanceRepositoryImpl implements BalanceRepository {

  final Dio dio;
  final CancelToken? cancelToken;

  BalanceRepositoryImpl({required this.dio, this.cancelToken});

  @override
  Future<SimpleResponse<int>> getBalance() async {
    try {
      final res = await dio.get('/user/balance');
      if (res.statusCode == 200) {
        return SimpleOkResponse(payload: res.data["balance"] ?? 0);
      }
      return SimpleErrorResponse(message: 'getting user balance error: неизветсная ошибка', payload: null);
    } catch (e) {
      return SimpleErrorResponse(message: "getting user balance error: ${e.toString()}", payload: null);
    }
  }
}