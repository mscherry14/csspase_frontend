import 'package:csspace_app/common/utils/widget/dialog_with_close_button.dart';
import 'package:flutter/material.dart';

import '../../../common/locale/locale.dart';
import '../../../common/navigation/navigation.dart';
import '../../../common/theme/theme.dart';


class AccrualSuccessDialog extends StatelessWidget {
  const AccrualSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
            PaddingAndRadiusThemeData.defaultThemeData;
    final customTheme = Theme.of(context).extension<CustomThemeData>() ??
        CustomThemeData.defaultThemeData;

    return DialogWithCloseButton(
      onCloseNavigation: () {
        final eventId = (Router.of(context).routerDelegate.currentConfiguration as ConcreteEventRoutePath).eventId;
        Router.of(context).routerDelegate.setNewRoutePath(
            EventInfoRoutePath(eventId: eventId)); //todo: clear navigation
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(paddingTheme.smallPadding),
            child: CustomIcon(
              iconPainter: CustomIcons.checkContained,
              style: IconThemeData(
                color: customTheme.positiveColor,
                size: 48,
              ),
            ),
          ),
          Text(
            AppLocaleScope.of(context).accrualSuccess,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.apply(color: customTheme.positiveColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: paddingTheme.mediumElementDistance,
          ),
          Text(
            AppLocaleScope.of(context).accrualSuccessLabel,
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: paddingTheme.largeElementDistance,
          ),
        ],
      ),
    );
  }
}

class AccrualErrorDialog extends StatelessWidget {
  const AccrualErrorDialog({super.key, this.errorMessage});

  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
            PaddingAndRadiusThemeData.defaultThemeData;
    final customTheme = Theme.of(context).extension<CustomThemeData>() ??
        CustomThemeData.defaultThemeData;
    final String message = (errorMessage ?? '').isEmpty
        ? AppLocaleScope.of(context).unknownError
        : (errorMessage ?? AppLocaleScope.of(context).unknownError);

    return DialogWithCloseButton(
      onCloseNavigation: () {
        final eventId = (Router.of(context).routerDelegate.currentConfiguration as ConcreteEventRoutePath).eventId;
        Router.of(context).routerDelegate.setNewRoutePath(
            EventInfoRoutePath(eventId: eventId)); //todo: clear navigation
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
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
            AppLocaleScope.of(context).accrualError,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.apply(color: customTheme.negativeColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: paddingTheme.mediumElementDistance,
          ),
          Text(
            AppLocaleScope.of(context).accrualErrorLabel(message),
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: paddingTheme.largeElementDistance,
          ),
        ],
      ),
    );
  }
}
