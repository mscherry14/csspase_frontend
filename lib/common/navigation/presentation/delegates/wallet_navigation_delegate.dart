import 'package:flutter/material.dart';

import '../../../../wallet/wallet.dart';
import 'students_navigation_delegate.dart';

class WalletNavigationDelegate extends StatelessWidget {
  const WalletNavigationDelegate({super.key});

  @override
  Widget build(BuildContext context) {
    final key = (Router.of(context).routerDelegate as StudentRouterDelegate).walletKey;
    final pages = <Page>[
      MaterialPage(canPop: false, child: WalletScreen())];
    return Navigator(
      key: key,
      pages: pages,
      onDidRemovePage: (page) {
        throw Exception('imperative navigation not allowed');
      },
    );
  }
}
