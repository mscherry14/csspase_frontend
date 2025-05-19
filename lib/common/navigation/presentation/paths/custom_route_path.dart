import 'package:freezed_annotation/freezed_annotation.dart';

part 'lector/events_route_path.dart';
part 'user/products_route_path.dart';
part 'user/orders_route_path.dart';
part 'user/wallet_route_path.dart';

part 'user/student_tab_extension.dart';

part 'custom_route_path.freezed.dart';

///BASE FOR ALL ROUTES
sealed class CustomRoutePath {
  const CustomRoutePath();
}


///ROLED ROUTES
sealed class UserRoutePath extends CustomRoutePath {
  const UserRoutePath();
}
sealed class LectorRoutePath extends CustomRoutePath {
  const LectorRoutePath();
}
// sealed class AdminRoutePath extends CustomRoutePath {
//   const AdminRoutePath();
// }

///UNKNOWN
@freezed
sealed class UnknownRoutePath extends CustomRoutePath with _$UnknownRoutePath {}