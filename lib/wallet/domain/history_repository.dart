import 'package:csspace_app/common/utils/simple_response.dart';

import 'model/transaction_info_model.dart';

abstract interface class HistoryRepository {
  Future<SimpleResponse<List<TransactionInfoModel>>> getHistory();
}