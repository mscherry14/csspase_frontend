import 'package:csspace_app/common/locale/widget/app_locale_scope.dart' show AppLocaleScope;
import 'package:csspace_app/common/navigation/presentation/delegates/user/products_navigation_scope.dart';
import 'package:csspace_app/shop/domain/product_bloc/product_bloc.dart';
import 'package:csspace_app/wallet/domain/balance_bloc/balance_bloc.dart';
import 'package:csspace_app/wallet/domain/history_bloc/history_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../shop/domain/order_bloc/order_bloc.dart';
import '../../../../../wallet/presentation/wallet_scope.dart';
import '../../../../theme/widget/custom_icons.dart';
import '../../../../theme/widget/theme_data/padding_theme_data.dart';
import '../../../../utils/widget/user_app_bar.dart';
import '../../paths/custom_route_path.dart';
import 'orders_navigation_delegate.dart';
import 'wallet_navigation_delegate.dart';

class UserRouterDelegate extends RouterDelegate<UserRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<UserRoutePath> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final GlobalKey<NavigatorState> walletKey;
  final GlobalKey<NavigatorState> ordersKey;
  final GlobalKey<NavigatorState> productsKey;

  UserRouterDelegate()
      : navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'global'),
        walletKey = GlobalKey<NavigatorState>(debugLabel: 'wallet'),
        ordersKey = GlobalKey<NavigatorState>(debugLabel: 'orders'),
        productsKey = GlobalKey<NavigatorState>(debugLabel: 'products');


  UserRoutePath _currentConfiguration = WalletRoutePath();

  @override
  UserRoutePath get currentConfiguration {
    return _currentConfiguration;
  }

  void _onSelectTab(int index) {
    _currentConfiguration = AppRouteTab.fromIndex(index);
    walletKey.currentContext?.read<BalanceBloc>().add(BalanceEvent.reload());//TODO: normal way reloading
    switch (_currentConfiguration) {
      case OrdersRoutePath():
        ordersKey.currentContext?.read<OrderBloc>().add(OrderEvent.reload()); //TODO: normal way reloading
      case WalletRoutePath():
        walletKey.currentContext?.read<HistoryBloc>().add(HistoryEvent.reload());//TODO: normal way reloading
      case ProductsRoutePath():
        productsKey.currentContext?.read<ProductBloc>().add(ProductEvent.reload());
    }
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
            appBar: UserAppBar(),
            body: IndexedStack(
              index: _currentConfiguration.tab.index,
              children: [
                WalletNavigationDelegate(navKey: walletKey,),
                ProductsNavigationDelegate(navKey: productsKey,),
                OrdersNavigationDelegate(navKey: ordersKey,)
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
  Future<void> setNewRoutePath(UserRoutePath configuration) async {
    _currentConfiguration = configuration;
    notifyListeners();
  }
}