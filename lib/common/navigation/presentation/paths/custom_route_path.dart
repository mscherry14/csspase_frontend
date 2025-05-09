import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/simple_response.dart';

part 'events_route_path.dart';
part 'products_route_path.dart';
part 'orders_route_path.dart';
part 'wallet_route_path.dart';

part 'student_tab_extension.dart';

part 'custom_route_path.freezed.dart';

///BASE FOR ALL ROUTES
sealed class CustomRoutePath {
  const CustomRoutePath();
}

///ROLED ROUTES
sealed class StudentRoutePath extends CustomRoutePath {
  const StudentRoutePath();
}
sealed class LectorRoutePath extends CustomRoutePath {
  const LectorRoutePath();
}
sealed class AdminRoutePath extends CustomRoutePath {
  const AdminRoutePath();
}

///UNKNOWN
@freezed
sealed class UnknownRoutePath extends CustomRoutePath with _$UnknownRoutePath {}