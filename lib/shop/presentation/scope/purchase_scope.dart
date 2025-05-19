import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../account/widget/account_scope.dart';
import '../../data/purchase_repository_impl.dart';
import '../../domain/purchase_bloc/purchase_bloc.dart';

class PurchaseScope extends StatelessWidget {
  final Widget child;
  final String id;

  const PurchaseScope({
    required this.child,
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => PurchaseBloc(PurchaseRepositoryImpl(dio: AccountScope.dioOf(context)))
          ..add(InitEvent(productId: id)),
        child: child,
      );
}
