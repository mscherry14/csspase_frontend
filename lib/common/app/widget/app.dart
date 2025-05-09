import 'package:flutter/material.dart';

import '../../locale/widget/app_locale_scope.dart';
import '../../navigation/navigation.dart';
import '../../theme/widget/app_theme_scope.dart';
import 'app_material_context.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => const AppLocaleScope(
        child: AppThemeScope(
          child: AppNavigationScope(
            child: AppMaterialContext(),
          ),
        ),
      );
}
