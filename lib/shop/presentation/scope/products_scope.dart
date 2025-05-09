import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/mocked_products_repository_impl.dart';
import '../../domain/product_bloc/product_bloc.dart';

class ProductsScope extends StatelessWidget {
  final Widget child;

  const ProductsScope({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
    ProductBloc(SimpleProductRepositoryImpl())..add(ProductStarted()),
    child: child,
  );
}
