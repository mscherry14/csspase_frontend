import 'package:flutter/material.dart';

import '../../../account/widget/account_scope.dart';
import '../../locale/widget/app_locale_scope.dart';
import '../../theme/widget/app_theme_scope.dart';
import 'app_material_context.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) =>
      const AppLocaleScope(child: AppThemeScope(child: AccountScope(child: AppMaterialContext())));
}
