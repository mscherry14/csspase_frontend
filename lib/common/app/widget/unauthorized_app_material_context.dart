import 'package:flutter/material.dart';

import '../../locale/locale.dart';
import '../../theme/widget/app_theme_scope.dart';

class UnauthorizedAppMaterialContext extends StatelessWidget {
  const UnauthorizedAppMaterialContext({super.key, required this.errorMessage});

  final String? errorMessage;

  @override
  Widget build(BuildContext context) => MaterialApp(
    supportedLocales: AppLocaleScope.supportedLocalesOf(context),
    localizationsDelegates: AppLocaleScope.localizationsDelegatesOf(context),
    theme: AppThemeScope.of(context).theme,
    locale: AppLocaleScope.localeOf(context),
    debugShowCheckedModeBanner: false,
    home: Builder(
      builder: (context) {
        return Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                errorMessage != null
                    ? AppLocaleScope.of(context).loadingError(errorMessage ?? "")
                    : AppLocaleScope.of(context).loading,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      }
    ),
  );
}
