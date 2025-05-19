import 'package:csspace_app/account/widget/account_scope.dart';
import 'package:csspace_app/shop/domain/order_bloc/order_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/orders_repository_impl.dart';

class OrderScope extends StatelessWidget {
  final Widget child;

  const OrderScope({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) =>
            OrderBloc(OrderRepositoryImpl(dio: AccountScope.dioOf(context)))..add(OrderStarted()),
        child: child,
      );
}
