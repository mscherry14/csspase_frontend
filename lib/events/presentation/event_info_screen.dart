import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:csspace_app/events/presentation/widget/lector_tile.dart';
import 'package:csspace_app/events/presentation/widget/participant_tile.dart';
import 'package:csspace_app/events/presentation/widget/warning_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/locale/locale.dart';
import '../../common/navigation/navigation.dart';
import '../../common/theme/theme.dart';
import '../domain/events_bloc/events_bloc.dart';
import '../domain/model/event_model.dart';
import 'widget/event_balance_widget.dart';
import 'widget/info_chip.dart';

class EventInfoScreen extends StatelessWidget {
  const EventInfoScreen({super.key, required this.eventId});

  final String eventId;

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;
    final Color dividerColor =
        Theme.of(context).textTheme.headlineMedium?.color ?? Colors.white;
    final eventRes = BlocProvider.of<EventsBloc>(
      context,
      listen: false,
    ).getEventById(eventId);
    if (eventRes is SimpleErrorResponse || eventRes.payload == null) {
      return Center(child: Text('error'));
    } else {
      final EventModel event = eventRes.payload;
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Router.of(context).routerDelegate.setNewRoutePath(
                EventsListRoutePath(),
              ); //todo: clear navigation
            },
            icon: Icon(Icons.arrow_back),
          ), //TODO: custom + navigation
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            PinnedHeaderSliver(
              child: ColoredBox(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: paddingTheme.mediumPadding,
                  ),
                  child: Column(
                    //TODO: NORMAL INFO
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///HEADLINE
                      Text(
                        event.headline,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      SizedBox(height: paddingTheme.largeElementDistance),

                      ///DEADLINE WARNING CHIP IF NEEDED
                      if (event.deadline.isBefore(DateTime(2025, 9, 1)))
                        WarningChip(
                          //todo: fox hardcode
                          text: AppLocaleScope.of(
                            context,
                          ).accrueDeadline(event.deadline),
                        ),
                      if (event.deadline.isBefore(DateTime(2025, 9, 1)))
                        SizedBox(height: paddingTheme.largeElementDistance),
                    ],
                  ),
                ),
              ),
            ),

            SliverResizingHeader(
              minExtentPrototype: EventBalanceWidget(
                actualBalance: 300,
                allBalance: 1500,
              ),
              maxExtentPrototype: DisappearInfoWidget(event: event),
              child: ColoredBox(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: DisappearInfoWidget(event: event),
              ),
            ),

            ///header for participants list
            PinnedHeaderSliver(
              child: ColoredBox(
                color: Theme.of(context).scaffoldBackgroundColor, //!important
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    paddingTheme.mediumPadding,
                    paddingTheme.mediumPadding,
                    paddingTheme.mediumPadding,
                    paddingTheme.smallPadding,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppLocaleScope.of(context).participants,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(width: paddingTheme.mediumElementDistance),
                      Expanded(
                        child: Divider(color: dividerColor, thickness: 1),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///participants list
            SliverList(
              delegate: SliverChildBuilderDelegate((
                BuildContext context,
                int index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: paddingTheme.mediumPadding,
                    vertical: paddingTheme.mediumPadding / 2,
                  ),
                  child: ParticipantCard(
                    participant: event.participantsList[index],
                  ),
                );
              }, childCount: event.participantsList.length),
            ),
          ],
        ),
      );
    }
  }
}

class DisappearInfoWidget extends StatelessWidget {
  const DisappearInfoWidget({super.key, required this.event});

  final EventModel event;

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;

    return LayoutBuilder(
      builder: (context, constraints) {
        return ClipRect(
          child: Align(
            alignment: Alignment.topLeft,
            heightFactor: 1.0,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 0,
                maxHeight: constraints.maxHeight,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: paddingTheme.mediumPadding,
                ),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  reverse: true,
                  child: Column(
                    //TODO: NORMAL INFO
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///LECTOR INFO
                      LectorCard(
                        person: event.teachersList.first,
                      ),
                      SizedBox(height: paddingTheme.largeElementDistance),

                      ///INFO CHIPS
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
                      SizedBox(height: paddingTheme.largeElementDistance),
                      EventBalanceWidget(actualBalance: event.actualBalance, allBalance: event.allBalance),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
