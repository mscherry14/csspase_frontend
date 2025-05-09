part of 'custom_route_path.dart';

enum AppTab {
  wallet,
  products,
  orders;
}

extension AppRouteTab on StudentRoutePath {
  AppTab get tab {
    return switch (this) {
      WalletRoutePath() => AppTab.wallet,
      ProductsRoutePath() => AppTab.products,
      OrdersRoutePath() => AppTab.orders,
    };
  }
  static StudentRoutePath fromIndex(int index) {
    if (index < 0 || index >= AppTab.values.length) {
      return WalletRoutePath();
    }
    switch (AppTab.values[index]) {
      case AppTab.wallet:
        return WalletRoutePath();
      case AppTab.products:
        return ProductsListRoutePath();
      case AppTab.orders:
        return OrdersRoutePath();
    }
  }
}
