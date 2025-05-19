import 'package:csspace_app/common/navigation/presentation/information_parser/role_route_parser.dart';
import 'package:flutter/widgets.dart';

import '../app_user_roles.dart';
import '../paths/custom_route_path.dart';

class AuthenticatedRouteInformationParser extends RouteInformationParser<CustomRoutePath> {
  final Map<Roles, RoleRouteInformationParser> roleParsers;

  AuthenticatedRouteInformationParser({required this.roleParsers});

  @override
  Future<CustomRoutePath> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final Uri uri = routeInformation.uri;

    if (uri.pathSegments.isEmpty) {
      return WalletRoutePath();

      /// default redirection todo:
    } else {
      final role = AuthenticatedNavigation.fromSegment(uri.pathSegments[0]);
      switch (role) {
        case null:
          return WalletRoutePath();

        /// default redirection todo:
        case Roles.user || Roles.teacher: // || Roles.admin:
          final parser = roleParsers[role];
          if (parser == null) {
            throw Exception("you need specify parser for all roles");
          }
          final subUri = uri.replace(pathSegments: uri.pathSegments.sublist(1));
          return await parser.parseSubPath(
            RouteInformation(uri: subUri, state: routeInformation.state),
          );
      }
    }
  }

  @override
  RouteInformation? restoreRouteInformation(CustomRoutePath configuration) {
    final segments = [""];
    final role = AuthenticatedNavigation.fromRoutePath(configuration);
    segments.add(role.pathSegment);
    final roleParser = roleParsers[role];
    if (roleParser == null) {
      throw Exception("you need specify all role parsers in authenticated route information parser");
    }
    final subInfo = roleParser.restoreSubPath(configuration);
    if (subInfo.uri.pathSegments[0] == "") {
      segments.addAll(subInfo.uri.pathSegments.sublist(1));
    } else {
      segments.addAll(subInfo.uri.pathSegments);
    }
    final uri = subInfo.uri.replace(pathSegments: segments);
    return RouteInformation(uri: uri, state: subInfo.state);
  }
}
