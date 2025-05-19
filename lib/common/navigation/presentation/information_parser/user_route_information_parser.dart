import 'package:csspace_app/common/navigation/presentation/information_parser/role_route_parser.dart';
import 'package:flutter/material.dart';

import '../paths/custom_route_path.dart';

class UserRouteInformationParser
    extends RoleRouteInformationParser<UserRoutePath> {
  @override
  Future<CustomRoutePath> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final Uri uri = routeInformation.uri;

    if (uri.pathSegments.isEmpty) {
      return WalletRoutePath(); /// default redirection
    } else {
      switch (uri.pathSegments[0]) {
        case "user":
          final subUri = uri.replace(pathSegments: uri.pathSegments.sublist(1));
          return await parseSubPath(
            RouteInformation(uri: subUri, state: routeInformation.state),
          );
        default:
          return WalletRoutePath(); /// default redirection
      }
    }
  }

  @override
  RouteInformation restoreRouteInformation(CustomRoutePath configuration) {
    final segments = <String>['', 'user'];
    if (configuration is UserRoutePath) {
      final res = restoreSubPath(configuration);
      if (res.uri.pathSegments[0] == "") {
        segments.addAll(res.uri.pathSegments.sublist(1));
      } else {
        segments.addAll(res.uri.pathSegments);
      }
      final uri = res.uri.replace(pathSegments: segments);
      return RouteInformation(uri: uri, state: res.state);
    } else {
      ///default redirection
     return RouteInformation(
       uri: Uri(
         pathSegments: segments,
       ),
     );
    }
  }

  @override
  Future<UserRoutePath> parseSubPath(RouteInformation routeInformation) async {
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
          if (uri.pathSegments.length > 1) {
            if (uri.pathSegments.length == 3 &&
                uri.pathSegments[2] == 'confirm') {
              //try
              return ConcreteProductRoutePath.purchaseConfirmation(
                productId: uri.pathSegments[1],
              );
            } else if (uri.pathSegments[2] == 'purchase_result') {
              final payload = _parseBool(uri.queryParameters['success']);
              final message = uri.queryParameters['message'];
              return payload
                  ? ConcreteProductRoutePath.purchaseSuccess(
                    productId: uri.pathSegments[1],
                  )
                  : ConcreteProductRoutePath.purchaseError(
                    productId: uri.pathSegments[1],
                    errorMessage: message,
                  );
            } else {
              return ProductsListRoutePath();

              ///unknown url in products tab
            }
          } else {
            return ProductsListRoutePath();

            ///unknown url in products tab
          }
        default:
          return WalletRoutePath();
      }
    }
  }

  @override
  RouteInformation restoreSubPath(UserRoutePath configuration) {
    switch (configuration) {
      case ProductsRoutePath():
        final segments = <String>['', 'products'];
        switch (configuration) {
          case ProductsListRoutePath():
            return RouteInformation(uri: Uri(pathSegments: segments));
          case PurchaseConfirmationRoutePath():
            segments.add((configuration).productId);
            segments.add('confirm');
            return RouteInformation(uri: Uri(pathSegments: segments));
          case PurchaseSuccessRoutePath():
            segments.add((configuration).productId);
            segments.add('purchase_result');
            return RouteInformation(
              uri: Uri(
                pathSegments: segments,
                queryParameters: {'success': 'true'},
              ),
            );
          case ProductInfoRoutePath(): //TODO: we dont have product info yet
            segments.add((configuration).productId);
            segments.add('confirm');
            return RouteInformation(uri: Uri(pathSegments: segments));
          case PurchaseErrorRoutePath():
            segments.add((configuration).productId);
            segments.add('purchase_result');
            return RouteInformation(
              uri: Uri(
                pathSegments: segments,
                queryParameters: {
                  'success': 'false',
                  'message': configuration.errorMessage,
                },
              ),
            );
        }

      case WalletRoutePath():
        return RouteInformation(uri: Uri(path: '/wallet'));

      case OrdersRoutePath():
        return RouteInformation(uri: Uri(path: '/orders'));
    }
  }

  bool _parseBool(String? value) {
    return value?.toLowerCase() == 'true';
  }
}
