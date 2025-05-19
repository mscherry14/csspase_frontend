import 'package:flutter/material.dart';

import '../../../../../shop/presentation/order_screen.dart';
import '../../../../../shop/presentation/scope/order_scope.dart';

class OrdersNavigationDelegate extends StatelessWidget {
  const OrdersNavigationDelegate({super.key, required this.navKey});

  final GlobalKey navKey;

  @override
  Widget build(BuildContext context) {
    // final key = (Router.of(context).routerDelegate as UserRouterDelegate).ordersKey;
    final pages = <Page>[
      MaterialPage(canPop: false, child: OrderScreen())];
    return OrderScope(
      child: Navigator(
        key: navKey,
        pages: pages,
        onDidRemovePage: (page) {},
      ),
    );
  }
}
