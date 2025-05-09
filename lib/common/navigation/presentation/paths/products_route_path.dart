part of 'custom_route_path.dart';

sealed class ProductsRoutePath extends StudentRoutePath {
  const ProductsRoutePath();
}

class ProductsListRoutePath extends ProductsRoutePath {
  const ProductsListRoutePath();
}

@freezed
sealed class ConcreteProductRoutePath extends ProductsRoutePath with _$ConcreteProductRoutePath {
  const ConcreteProductRoutePath._();
  const factory ConcreteProductRoutePath.productInfo({required String productId}) = ProductInfoRoutePath;
  const factory ConcreteProductRoutePath.purchaseConfirmation({required String productId}) = PurchaseConfirmationRoutePath;
  const factory ConcreteProductRoutePath.purchaseSuccess({required String productId}) = PurchaseSuccessRoutePath;
  const factory ConcreteProductRoutePath.purchaseError({required String productId, String? errorMessage}) = PurchaseErrorRoutePath;
}
