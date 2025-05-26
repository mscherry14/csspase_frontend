import 'package:csspace_app/common/utils/simple_response.dart';

import '../../../common/navigation/presentation/app_user_roles.dart';

//TODO: fix
abstract interface class AccountRepository {
  Future<SimpleResponse<Set<Roles>>> login();
  Future<SimpleResponse<Set<Roles>>> getAccount();
}
