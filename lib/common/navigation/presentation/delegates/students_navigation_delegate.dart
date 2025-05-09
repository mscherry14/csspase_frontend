import 'package:csspace_app/common/locale/widget/app_locale_scope.dart' show AppLocaleScope;
import 'package:flutter/material.dart';

import '../../../utils/widget/student_app_bar.dart';
import '../../../../wallet/wallet.dart';
import '../../../theme/theme.dart';
import '../../../utils/widget/menu_button.dart';
import '../paths/custom_route_path.dart';
import 'orders_navigation_delegate.dart';
import 'products_navigation_scope.dart';
import 'wallet_navigation_delegate.dart';

class StudentRouterDelegate extends RouterDelegate<StudentRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<StudentRoutePath> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final GlobalKey<NavigatorState> walletKey;
  final GlobalKey<NavigatorState> ordersKey;
  final GlobalKey<NavigatorState> productsKey;

  StudentRouterDelegate()
      : navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'global'),
        walletKey = GlobalKey<NavigatorState>(debugLabel: 'wallet'),
        ordersKey = GlobalKey<NavigatorState>(debugLabel: 'orders'),
        productsKey = GlobalKey<NavigatorState>(debugLabel: 'products');


  StudentRoutePath _currentConfiguration = WalletRoutePath();

  @override
  StudentRoutePath get currentConfiguration {
    return _currentConfiguration;
  }

  void _onSelectTab(int index) {
    _currentConfiguration = AppRouteTab.fromIndex(index);
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
            PaddingAndRadiusThemeData.defaultThemeData;

    final List<Page<void>> pages = [
      MaterialPage(
        canPop: false,
        key: const ValueKey('tabs'),
        child:
        WalletScope(
          child:
          Scaffold(
            appBar: StudentAppBar(),
            body: IndexedStack(
              index: _currentConfiguration.tab.index,
              children: [
                WalletNavigationDelegate(),
                ProductsNavigationDelegate(),
                OrdersNavigationDelegate()
              ],
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: BottomNavigationBar(
                currentIndex: _currentConfiguration.tab.index,
                onTap: _onSelectTab,
                items: [
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding:
                        EdgeInsets.all(paddingTheme.minimalElementDistance),
                        child: CustomIcon(
                          iconPainter: CustomIcons.wallet,
                        ),
                      ),
                      label: AppLocaleScope.of(context).wallet), //todo
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding:
                        EdgeInsets.all(paddingTheme.minimalElementDistance),
                        child: CustomIcon(
                          iconPainter: CustomIcons.shop,
                        ),
                      ),
                      label: AppLocaleScope.of(context).shop),
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding:
                        EdgeInsets.all(paddingTheme.minimalElementDistance),
                        child: CustomIcon(
                          iconPainter: CustomIcons.order,
                        ),
                      ),
                      label: AppLocaleScope.of(context).orders),
                ],
              ),
            ),
          ),
        ),
      ),
    ];
    return Navigator(
      key: navigatorKey,
      pages: pages,
      onDidRemovePage: (page) {
      },
    );
  }

  @override
  Future<void> setNewRoutePath(StudentRoutePath configuration) async {
    _currentConfiguration = configuration;
    notifyListeners();
  }
}