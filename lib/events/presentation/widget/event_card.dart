import 'package:flutter/material.dart';

import '../../../common/locale/widget/app_locale_scope.dart';
import '../../../common/navigation/navigation.dart';
import '../../../common/theme/theme.dart';
import '../../domain/model/event_short_model.dart';
import 'info_chip.dart';
import 'warning_chip.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key, required this.event});

  final EventShortModel event;

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;

    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.circular(paddingTheme.mediumBorderRadius),
      ),
      child: Padding(
        padding: EdgeInsets.all(paddingTheme.mediumPadding),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: 112),
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///LEFT PART WITH INFO
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          event.headline,
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        SizedBox(height: paddingTheme.largeElementDistance),
                        if (event.deadline != null)
                          if (event.deadline!.isBefore(
                            DateTime.now().add(Duration(days: 7)),
                          )) ...[
                            WarningChip(
                              text: AppLocaleScope.of(
                                context,
                              ).accrueDeadline(event.deadline!),
                            ),
                            SizedBox(height: paddingTheme.largeElementDistance),
                          ],
                        Wrap(
                          spacing: paddingTheme.mediumElementDistance,
                          runSpacing: paddingTheme.mediumElementDistance,
                          children: List.generate(
                            event.infoList.length,
                            (index) => InfoChip(
                              text: event.infoList[index].text,
                              isDateStyle: event.infoList[index].isDate,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: paddingTheme.mediumElementDistance),

                  /// RIGHT PART WITH ACTION-BALANCE
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomIcon(
                        iconPainter: CustomIcons.wallet,
                        style: IconThemeData(size: 32),
                      ),
                      SizedBox(width: paddingTheme.mediumElementDistance),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocaleScope.of(context).balance,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          Text(
                            '${event.actualBalance}',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                right: 0, //paddingTheme.mediumPadding,
                bottom: 0, //paddingTheme.mediumPadding,
                child: ElevatedButton(
                  onPressed: () {
                    Router.of(context).routerDelegate.setNewRoutePath(
                      EventInfoRoutePath(eventId: event.id),
                    ); //todo: clear navigation
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    size: 32,
                  ), //TODO: custom icon
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
