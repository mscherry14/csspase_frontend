import 'package:csspace_app/common/navigation/navigation.dart';
import 'package:flutter/widgets.dart';

abstract class RoleRouteInformationParser<T> extends RouteInformationParser<CustomRoutePath> {
  ///T must be subtype of [CustomRoutePath]
  Future<T> parseSubPath(RouteInformation routeInformation);
  RouteInformation restoreSubPath(T configuration);
}
