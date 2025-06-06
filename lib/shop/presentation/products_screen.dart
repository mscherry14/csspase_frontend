import 'package:csspace_app/common/theme/theme.dart';
import 'package:csspace_app/shop/presentation/widget/product_card.dart';
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
          return GridNCountBuilder(
            itemCount: state.products.length,
            maxElemWidht: 200,
            mainAxisSpacing: paddingTheme.mediumElementDistance * 1.5,
            crossAxisSpacing: paddingTheme.mediumElementDistance * 1.5,
            horizontalPadding: paddingTheme.mediumPadding,
            itemBuilder:
                (BuildContext context, int index) => ProductCard(
                  id: state.products[index].productId,
                  name: state.products[index].productName,
                  price: state.products[index].price,
                ),
          );
        },
      ),
    );
  }
}

class GridNCountBuilder extends StatelessWidget {
  const GridNCountBuilder({
    super.key,
    required this.itemCount,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.itemBuilder,
    required this.maxElemWidht,
    this.horizontalPadding = 0.0,
  }) : assert(maxElemWidht != double.infinity),
       assert(maxElemWidht >= 0.0);

  final int itemCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double horizontalPadding;
  final double maxElemWidht;
  final Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final colCount =
            ((constraints.maxWidth - 2 * horizontalPadding + crossAxisSpacing) /
                    (maxElemWidht + crossAxisSpacing))
                .ceil();

        return ListView.builder(
          itemBuilder: (BuildContext context, int rowIndex) {
            return Padding(
              padding: EdgeInsets.fromLTRB(
                horizontalPadding,
                0,
                horizontalPadding,
                mainAxisSpacing,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(2 * colCount - 1, (colIndex) {
                  final elemInd = rowIndex * colCount + colIndex ~/ 2;
                  return colIndex % 2 == 1
                      ? SizedBox(width: crossAxisSpacing)
                      : Expanded(
                        child:
                            itemCount > elemInd
                                ? itemBuilder(context, elemInd)
                                : SizedBox.shrink(),
                      );
                }),
              ),
            );
          },
          itemCount: (itemCount / colCount).ceil(),
        );
      },
    );
  }
}
