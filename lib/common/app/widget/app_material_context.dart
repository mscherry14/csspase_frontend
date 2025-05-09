import 'package:flutter/material.dart';

import '../../locale/locale.dart';
import '../../navigation/navigation.dart';
import '../../theme/widget/app_theme_scope.dart';

class AppMaterialContext extends StatefulWidget {

  const AppMaterialContext({super.key});

  @override
  State<AppMaterialContext> createState() => _AppMaterialContextState();
}

class _AppMaterialContextState extends State<AppMaterialContext> {
  final CustomRouteInformationParser _routeInformationParser =
      CustomRouteInformationParser();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    routeInformationParser: _routeInformationParser,
    routerDelegate: AppNavigationScope.delegateOf(context),
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
