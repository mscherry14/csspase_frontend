import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:csspace_app/wallet/domain/model/transaction_info_model.dart';
import 'package:dio/dio.dart';

import '../domain/history_repository.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  final Dio dio;
  final CancelToken? cancelToken;

  HistoryRepositoryImpl({required this.dio, this.cancelToken});

  @override
  Future<SimpleResponse<List<TransactionInfoModel>>> getHistory() async {
    try {
      final res = await dio.get('/user/transactions');
      if (res.statusCode == 200) {
        final List<TransactionInfoModel> transactions = [];
        for (final elem in res.data) {
          transactions.add(TransactionInfoModel.fromJson(elem));
        }
        return SimpleOkResponse(payload: transactions);
      }
      return SimpleErrorResponse(message: 'getting user balance error: неизветсная ошибка', payload: <TransactionInfoModel>[]);
    } catch (e) {
      return SimpleErrorResponse(message: "getting user balance error: ${e.toString()}", payload: []);
    }
  }
}
