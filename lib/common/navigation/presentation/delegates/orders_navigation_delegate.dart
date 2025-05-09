import 'package:flutter/material.dart';

import '../../../../shop/presentation/order_screen.dart';
import '../../../../shop/presentation/scope/order_scope.dart';
import 'students_navigation_delegate.dart';

class OrdersNavigationDelegate extends StatelessWidget {
  const OrdersNavigationDelegate({super.key});

  @override
  Widget build(BuildContext context) {
    final key = (Router.of(context).routerDelegate as StudentRouterDelegate).ordersKey;
    final pages = <Page>[
      MaterialPage(canPop: false, child: OrderScreen())];
    return OrderScope(
      child: Navigator(
        key: key,
        pages: pages,
        onDidRemovePage: (page) {},
      ),
    );
  }
}
