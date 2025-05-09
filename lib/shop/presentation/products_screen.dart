import 'package:csspace_app/common/theme/theme.dart';
import 'package:csspace_app/shop/presentation/widget/product_card.dart';
import 'package:csspace_app/common/utils/widget/student_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/product_bloc/product_bloc.dart';



class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
            PaddingAndRadiusThemeData.defaultThemeData;

    return Scaffold(
      body: BlocBuilder<ProductBloc, ProductState>(
        buildWhen: (prev, curr) => prev != curr,
        builder: (context, state) {
          return GridTwoCountBuilder(
            itemCount: state.products.length,
            mainAxisSpacing: paddingTheme.mediumElementDistance * 1.5,
            crossAxisSpacing: paddingTheme.mediumElementDistance * 1.5,
            horizontalPadding: paddingTheme.mediumPadding,
            itemBuilder: (BuildContext context, int index) => ProductCard(
                id: state.products[index].productId,
                name: state.products[index].productName,
                price: state.products[index].price),
          );
        },
      ),
    );
  }
}

class GridTwoCountBuilder extends StatelessWidget {
  const GridTwoCountBuilder({
    super.key,
    required this.itemCount,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.itemBuilder,
    this.horizontalPadding = 0.0,
  });

  final int itemCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double horizontalPadding;
  final Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.fromLTRB(
              horizontalPadding, 0, horizontalPadding, mainAxisSpacing),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: itemBuilder(context, index * 2)),
              SizedBox(
                width: crossAxisSpacing,
              ),
              Expanded(
                  child: itemCount > (index * 2 + 1)
                      ? itemBuilder(context, index * 2 + 1)
                      : SizedBox.shrink()),
            ],
          ),
        );
      },
      itemCount: itemCount % 2 == 0 ? itemCount ~/ 2 : (itemCount ~/ 2 + 1),
    );
  }
}
