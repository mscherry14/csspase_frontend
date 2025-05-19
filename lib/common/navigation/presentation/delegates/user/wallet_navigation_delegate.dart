import 'package:flutter/material.dart';

import '../../../../../wallet/wallet.dart';

class WalletNavigationDelegate extends StatelessWidget {
  const WalletNavigationDelegate({super.key, required this.navKey});

  final GlobalKey navKey;

  @override
  Widget build(BuildContext context) {
    //final key = (Router.of(context).routerDelegate as UserRouterDelegate).walletKey;
    final pages = <Page>[
      MaterialPage(canPop: false, child: WalletScreen())];
    return Navigator(
      key: navKey,
      pages: pages,
      onDidRemovePage: (page) {
        throw Exception('imperative navigation not allowed');
      },
    );
  }
}
