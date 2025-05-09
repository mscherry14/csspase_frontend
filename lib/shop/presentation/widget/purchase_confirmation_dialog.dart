import 'package:csspace_app/common/theme/theme.dart';
import 'package:csspace_app/common/utils/widget/dialog_with_close_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/locale/widget/app_locale_scope.dart';
import '../../../common/navigation/navigation.dart';
import '../../domain/purchase_bloc/purchase_bloc.dart';

class PurchaseConfirmationDialog extends StatelessWidget {
  const PurchaseConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;
    final customTheme =
        Theme.of(context).extension<CustomThemeData>() ??
        CustomThemeData.defaultThemeData;

    return DialogWithCloseButton(
      child: BlocBuilder<PurchaseBloc, PurchaseState>(
        buildWhen: (prev, curr) {
          if (prev is WaitForConfirmationState) return false;
          return prev != curr;
        },
        builder: (context, state) {
          ///INIT
          if (state is InitialState) {
            return Center(child: CircularProgressIndicator());

            ///BODY OF NORM WAY CONFIRMATION
          } else if (state is WaitForConfirmationState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        AppLocaleScope.of(context).purchaseConfirmation,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    const SizedBox(width: 32, height: 24), //todo: ???
                  ],
                ),
                SizedBox(height: paddingTheme.mediumElementDistance),

                Text(
                  AppLocaleScope.of(context).purchaseConfirmationBody,
                  style: Theme.of(context).textTheme.bodySmall,
                ),

                SizedBox(height: paddingTheme.minimalElementDistance),

                //about product
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        state.product.productName,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    SizedBox(width: paddingTheme.mediumElementDistance),
                    Text(
                      AppLocaleScope.of(
                        context,
                      ).productPrice(state.product.price),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),

                SizedBox(height: paddingTheme.mediumElementDistance),

                //кнопка купить
                BlocListener<PurchaseBloc, PurchaseState>(
                  listenWhen:
                      (context, state) =>
                          state is PurchaseSuccessState ||
                          state is PurchaseErrorState,
                  listener: (context, state) {
                    if (state is PurchaseSuccessState) {
                      Router.of(context).routerDelegate.setNewRoutePath(
                        PurchaseSuccessRoutePath(productId: ''),
                      ); //todo: clear navigation
                    } else if (state is PurchaseErrorState) {
                      Router.of(context).routerDelegate.setNewRoutePath(
                        PurchaseErrorRoutePath(
                          errorMessage: state.message ?? '',
                          productId: '',
                        ),
                      ); //todo: clear navigation
                    }
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<PurchaseBloc>().add(
                          PurchaseEvent.confirm(),
                        );
                      },
                      child: Text(
                        AppLocaleScope.of(context).buy,
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall?.apply(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            );

            ///BODY OF SMTH WENT WRONG
          } else {
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(paddingTheme.smallPadding),
                  child: CustomIcon(
                    iconPainter: CustomIcons.cancelCircleContained,
                    style: IconThemeData(
                      color: customTheme.negativeColor,
                      size: 48,
                    ),
                  ),
                ),
                Text(
                  AppLocaleScope.of(context).smthWentWrong,
                  style: Theme.of(context).textTheme.headlineMedium?.apply(
                    color: customTheme.negativeColor,
                  ),
                ),
                SizedBox(height: paddingTheme.mediumElementDistance),
                Text(
                  AppLocaleScope.of(context).smthWentWrongLabel,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: paddingTheme.largeElementDistance),
              ],
            );
          }
        },
      ),
      onCloseNavigation: () {
        Router.of(context).routerDelegate.setNewRoutePath(
          ProductsListRoutePath(),
        ); //todo: clear navigation
      },
    );
  }
}
