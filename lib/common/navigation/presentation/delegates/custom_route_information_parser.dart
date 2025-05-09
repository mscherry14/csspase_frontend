import 'package:flutter/material.dart';

import '../paths/custom_route_path.dart';


class CustomRouteInformationParser
    extends RouteInformationParser<CustomRoutePath> {
  @override
  Future<CustomRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final Uri uri = routeInformation.uri;
    // Handle '/'
    if (uri.pathSegments.isEmpty) {
      return WalletRoutePath(); //todo:???
    } else {
      switch (uri.pathSegments[0]) {
        case 'wallet':
          return WalletRoutePath();
        case 'orders':
          return OrdersRoutePath();
        case 'products':
          // if (uri.pathSegments.length > 1) {
          //   if (uri.pathSegments.length == 3 &&
          //       uri.pathSegments[2] == 'confirm') {
          //     //try
          //     return ProductsRoutePath.purchaseConfirmation(
          //         productId: uri.pathSegments[1]);
          //   } else if (uri.pathSegments[1] == 'purchase_result') {
          //     final payload = _parseBool(uri.queryParameters['success']);
          //     final message = uri.queryParameters['message'];
          //     return ProductsRoutePath.purchaseSuccess(
          //         success: payload
          //             ? SimpleOkResponse(payload: payload)
          //             : SimpleErrorResponse(
          //                 message: message ?? '', payload: payload),
          //     );
          //   } else {
          //     return ProductsRoutePath.list();
          //
          //     ///unknown url in products tab
          //   }
          // } else {
          //   return ProductsRoutePath.list();
          // }
          return ProductsListRoutePath();
        default:
          return WalletRoutePath();
      }
    }
  }

  @override
  RouteInformation restoreRouteInformation(CustomRoutePath configuration) {
    switch (configuration) {
      case ProductsRoutePath():
        final segments = <String>['', 'products'];

        // switch (configuration) {
        //   case ProductsListRoutePath():
        //     return RouteInformation(uri: Uri(pathSegments: segments));
        //   case PurchaseConfirmationRoutePath():
        //     segments.add((configuration).productId);
        //     segments.add('confirm');
        //     return RouteInformation(uri: Uri(pathSegments: segments));
        //   case PurchaseSuccessRoutePath():
        //     segments.add('purchase_result');
        //     return RouteInformation(
        //         uri: Uri(pathSegments: segments, queryParameters: {
        //       'success': configuration.success.payload ? 'true' : 'false',
        //     }));
        // }
        return RouteInformation(uri: Uri(pathSegments: segments));

      case WalletRoutePath():
        return RouteInformation(uri: Uri(path: '/wallet'));

      case OrdersRoutePath():
        return RouteInformation(uri: Uri(path: '/orders'));

      default:
        return RouteInformation(uri: Uri(path: '/wallet'));
    }
  }
  //
  // bool _parseBool(String? value) {
  //   return value?.toLowerCase() == 'true';
  // }
}
