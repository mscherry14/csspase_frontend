import 'package:csspace_app/common/theme/theme.dart';
import 'package:csspace_app/shop/presentation/widget/order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/order_bloc/order_bloc.dart';


class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final paddingTheme = theme.extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          ///transaction list
          BlocBuilder<OrderBloc, OrderState>(
            builder: (context, state) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(
                          paddingTheme.mediumPadding,
                          0,
                          paddingTheme.mediumPadding,
                          paddingTheme.mediumPadding),
                      child: OrderCard(
                        productName: state.orders[index].name,
                        dateTime: state.orders[index].orderDate,
                        price: state.orders[index].price,
                        status: state.orders[index].status,
                      ),
                    );
                  },
                  childCount: state.orders.length,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
