import 'package:csspace_app/common/theme/data/simple_theme_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/theme_bloc/theme_bloc.dart';
import '../domain/theme_mode_enum.dart';
import 'model/app_theme.dart';
import 'model/dark_app_theme.dart';


class AppThemeScope extends StatelessWidget {
  final Widget child;

  const AppThemeScope({super.key, required this.child});

  static AppTheme of(BuildContext context) {
    final AppThemeProvider? result =
        context.dependOnInheritedWidgetOfExactType<AppThemeProvider>();
    assert(result != null, 'No AppThemeProvider found in context');
    return result!.theme;
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ThemeBloc(SimpleThemeRepositoryImpl()), //todo: get it???
        child: ContextualAppThemeProvider(child: child),
      );
}

class ContextualAppThemeProvider extends StatelessWidget {
  const ContextualAppThemeProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppThemeProvider(
      theme: switch (context.watch<ThemeBloc>().state.themeMode) {
        CustomThemeMode.dark => const DarkAppTheme(),
      },
      child: child,
    );
  }
}

class AppThemeProvider extends InheritedWidget {
  final AppTheme theme;

  const AppThemeProvider({
    required this.theme,
    required super.child,
    super.key,
  });

  @override
  bool updateShouldNotify(AppThemeProvider oldWidget) {
    return oldWidget.theme != theme;
  }
}
