import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/navigation_bloc/navigation_bloc.dart';
import '../delegates/lector_router_delegate.dart';
import '../delegates/students_navigation_delegate.dart';
import '../paths/auth_extension.dart';
import '../paths/custom_route_path.dart';


class AppNavigationScope extends StatelessWidget {
  final Widget child;

  const AppNavigationScope({super.key, required this.child});

  static RouterDelegate<CustomRoutePath> delegateOf(BuildContext context) {
    final AppNavigationProvider? result =
        context.dependOnInheritedWidgetOfExactType<AppNavigationProvider>();
    assert(result != null, 'No AppNavigationProvider found in context');
    return result!.navigation;
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => NavigationBloc(), //todo: get it???
        child: ContextualAppNavigationProvider(child: child),
      );
}

class ContextualAppNavigationProvider extends StatelessWidget {
  const ContextualAppNavigationProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppNavigationProvider(
      navigation: switch (context.watch<NavigationBloc>().state.navigationMode) {
        Roles.student => StudentRouterDelegate(),
        Roles.lector => LectorRouterDelegate(),
        Roles.admin => throw UnimplementedError(),
      },
      child: child,
    );
  }
}

class AppNavigationProvider extends InheritedWidget {
  final RouterDelegate<CustomRoutePath> navigation;

  const AppNavigationProvider({
    required this.navigation,
    required super.child,
    super.key,
  });

  @override
  bool updateShouldNotify(AppNavigationProvider oldWidget) {
    return oldWidget.navigation != navigation;
  }
}
