part of 'product_bloc.dart';

@freezed
sealed class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = ProductStarted;
  const factory ProductEvent.reload() = ProductReload;
}
