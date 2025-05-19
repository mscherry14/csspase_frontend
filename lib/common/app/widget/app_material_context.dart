import 'package:csspace_app/account/widget/account_scope.dart';
import 'package:csspace_app/common/navigation/presentation/app_user_roles.dart';
import 'package:csspace_app/common/navigation/presentation/delegates/user/user_router_delegate.dart';
import 'package:csspace_app/common/navigation/presentation/information_parser/lector_route_information_parser.dart';
import 'package:csspace_app/common/navigation/presentation/information_parser/user_route_information_parser.dart';
import 'package:flutter/material.dart';

import '../../locale/locale.dart';
import '../../navigation/navigation.dart';
import '../../navigation/presentation/delegates/lector/lector_router_delegate.dart';
import '../../theme/widget/app_theme_scope.dart';

class AppMaterialContext extends StatefulWidget {

  const AppMaterialContext({super.key});

  @override
  State<AppMaterialContext> createState() => _AppMaterialContextState();
}

class _AppMaterialContextState extends State<AppMaterialContext> {
  final AuthenticatedRouteInformationParser _routeInformationParser =
  AuthenticatedRouteInformationParser(roleParsers: {
    Roles.user: UserRouteInformationParser(),
    Roles.teacher: LectorRouteInformationParser()
  });
  // final AuthenticatedRouterDelegate _routerDelegate =
  // AuthenticatedRouterDelegate(allowedRoles: AccountScope.of(context)., appsByRole: {
  //   Roles.user: UserRouterDelegate(),
  //   Roles.teacher: LectorRouterDelegate(),
  // });

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    routeInformationParser: _routeInformationParser,
    routerDelegate: AuthenticatedRouterDelegate(allowedRoles: AccountScope.of(context), appsByRole: {
      Roles.user: UserRouterDelegate(),
      Roles.teacher: LectorRouterDelegate(),
    }),
    supportedLocales: AppLocaleScope.supportedLocalesOf(context),
    localizationsDelegates: AppLocaleScope.localizationsDelegatesOf(context),
    theme: AppThemeScope.of(context).theme,
    locale: AppLocaleScope.localeOf(context),
    debugShowCheckedModeBanner: false,
  );

  ///THIS IS WITHOUT_ROUTER CONFIG TO TEST LAYOUT WHEN ROUTER NOT IMPLEMENTED CORRECTLY
  // @override
  // Widget build(BuildContext context) => MaterialApp(
  //   supportedLocales: AppLocaleScope.supportedLocalesOf(context),
  //   localizationsDelegates: AppLocaleScope.localizationsDelegatesOf(context),
  //   theme: AppThemeScope.of(context).theme,
  //   locale: AppLocaleScope.localeOf(context),
  //   home: Placeholder(),
  // );
}
