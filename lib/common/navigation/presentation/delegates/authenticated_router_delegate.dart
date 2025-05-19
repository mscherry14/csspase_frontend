import 'package:csspace_app/common/navigation/navigation.dart';
import 'package:flutter/material.dart';

import '../app_user_roles.dart';

class AuthenticatedRouterDelegate extends RouterDelegate<CustomRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<CustomRoutePath> {
  final Set<Roles> allowedRoles;
  final Map<Roles, RouterDelegate> appsByRole;

  CustomRoutePath _currentConfiguration = WalletRoutePath(); //default

  @override
  CustomRoutePath get currentConfiguration {
    return _currentConfiguration;
  }

  AuthenticatedRouterDelegate({
    required this.allowedRoles,
    required this.appsByRole,
  }) {
    for (final app in appsByRole.values) {
      app.addListener(_onChildRouterChanged(app));
    }
  }

  Function() _onChildRouterChanged(RouterDelegate app) {
    return () {
      _currentConfiguration = app.currentConfiguration;
      notifyListeners();
    };
  }

  @override
  void dispose() {
    for (final app in appsByRole.values) {
      app.removeListener(_onChildRouterChanged(app));
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentApp =
        appsByRole[AuthenticatedNavigation.fromRoutePath(
          _currentConfiguration,
        )];
    if (currentApp == null) {
      throw Exception(
        'incorrect Map<Roles, RouterDelegate>: you need specify RouterDelegate for all Roles',
      );
    }
    return currentApp.build(context);
  }

  @override
  Future<void> setNewRoutePath(CustomRoutePath configuration) async {
    final role = AuthenticatedNavigation.fromRoutePath(configuration);
    if (!allowedRoles.contains(role)) {
      return;
    }
    final currentApp = appsByRole[role];
    if (currentApp == null) {
      throw Exception(
        'incorrect Map<Roles, RouterDelegate>: you need specify RouterDelegate for all Roles',
      );
    }
    await currentApp.setNewRoutePath(configuration);
    _currentConfiguration = configuration;
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
