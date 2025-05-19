import 'package:csspace_app/events/domain/model/participant_model.dart';
import 'package:flutter/material.dart';

import '../../../common/locale/locale.dart';
import '../../../common/navigation/navigation.dart';
import '../../../common/theme/theme.dart';

class ParticipantCard extends StatelessWidget {
  const ParticipantCard({
    super.key,
    required this.participant,
  });

  final ParticipantModel participant;

  @override
  Widget build(BuildContext context) {
    //получить design переменные из темы
    final theme = Theme.of(context);
    final paddingTheme =
        theme.extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;

    //отрисовать карточку
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ), //todo: real maxHeight
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // //avatar
          // CircleAvatar(
          //   backgroundColor:
          //       DarkThemeConstants.unhighlighted, //todo: from theme
          //   foregroundImage: participant.person.avatar,
          // ),
          // SizedBox(width: paddingTheme.largeElementDistance),
          //name and accrual
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  participant.name,
                  style: theme.textTheme.headlineMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                //SizedBox(height: paddingTheme.minimalElementDistance),
                Text(
                  AppLocaleScope.of(
                    context,
                  ).participantEventAccrual(participant.sent),
                  style: theme.textTheme.labelMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(width: paddingTheme.largeElementDistance),
          ElevatedButton(
            onPressed: () {
              final eventId = (Router.of(context).routerDelegate.currentConfiguration as ConcreteEventRoutePath).eventId;
              Router.of(
                context,
              ).routerDelegate.setNewRoutePath(
                EventTokenAccrualRoutePath(eventId: eventId, personId: participant.id)
              ); //todo: clear navigation

            }, //todo: navigation
            child: Padding(
              padding: EdgeInsets.all(paddingTheme.smallPadding),
              child: Text(AppLocaleScope.of(context).accrue),
            ),
          ),
        ],
      ),
    );
  }
}
