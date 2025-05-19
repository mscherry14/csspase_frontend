import 'package:csspace_app/shop/presentation/products_screen.dart';
import 'package:csspace_app/shop/presentation/scope/products_scope.dart';
import 'package:flutter/material.dart';

import '../../../../../shop/presentation/scope/purchase_scope.dart';
import '../../../../../shop/presentation/widget/purchase_confirmation_dialog.dart';
import '../../../../../shop/presentation/widget/purchase_result_dialog.dart';
import '../../modal_dialog_page.dart';
import '../../paths/custom_route_path.dart';

class ProductsNavigationDelegate extends StatelessWidget {
  const ProductsNavigationDelegate({super.key, required this.navKey});

  final GlobalKey navKey;

  @override
  Widget build(BuildContext context) {
    // final key =
    //     (Router.of(context).routerDelegate as UserRouterDelegate)
    //         .productsKey;
    final currentConfiguration =
        Router.of(context).routerDelegate.currentConfiguration;
    final pages = <Page>[
      MaterialPage(canPop: false, child: ProductsScreen()),
      if (currentConfiguration is PurchaseConfirmationRoutePath)
        ModalDialogPage(
          key: ValueKey('confirm'),
          child: PurchaseScope(
            id: currentConfiguration.productId,
            child: PurchaseConfirmationDialog(),
          ), //PurchaseConfirmationPage(productId: productId),
        ),
      if (currentConfiguration is PurchaseSuccessRoutePath)
        ModalDialogPage(
          key: ValueKey('success'),
          child: PurchaseSuccessDialog(),
        ),
      if (currentConfiguration is PurchaseErrorRoutePath)
        ModalDialogPage(
          key: ValueKey('error'),
          child: PurchaseErrorDialog(
            errorMessage: currentConfiguration.errorMessage,
          ), //PurchaseConfirmationPage(productId: productId),
        ),
    ];
    return ProductsScope(
      child: Navigator(key: navKey, pages: pages, onDidRemovePage: (page) {}),
    );
  }
}
