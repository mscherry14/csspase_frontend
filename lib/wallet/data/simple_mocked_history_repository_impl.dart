import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:csspace_app/wallet/domain/model/transaction_info_model.dart';

import '../domain/repositories/history_repository.dart';

class SimpleHistoryRepositoryImpl implements HistoryRepository {
  @override
  Future<SimpleOkResponse<List<TransactionInfoModel>>> getHistory() async {
    return SimpleOkResponse(payload: List.generate(
        50,
        (index) => TransactionInfoModel(
            transactionHeadline: 'headline $index',
            transactionTime: DateTime(2025),
            variation: (index - 20) * 50,
        ),),);
  }
}
