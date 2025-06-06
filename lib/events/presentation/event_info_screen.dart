import 'package:csspace_app/events/presentation/widget/lector_tile.dart';
import 'package:csspace_app/events/presentation/widget/participant_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/locale/locale.dart';
import '../../common/navigation/navigation.dart';
import '../../common/theme/theme.dart';
import '../domain/model/event_model.dart';
import '../domain/single_event_bloc/single_event_bloc.dart';
import 'widget/event_balance_widget.dart';
import 'widget/info_chip.dart';
import 'widget/warning_chip.dart';

class EventInfoScreen extends StatelessWidget {
  const EventInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;
    final Color dividerColor =
        Theme.of(context).textTheme.headlineMedium?.color ?? Colors.white;

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
      body: BlocBuilder<SingleEventBloc, SingleEventState>(
        builder: (context, state) {
          if (state is SingleEventOkState) {
            return CustomScrollView(
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
                            state.openedEvent.headline,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          SizedBox(height: paddingTheme.largeElementDistance),

                          ///DEADLINE WARNING CHIP IF NEEDED
                          if (state.openedEvent.deadline != null)
                            if (state.openedEvent.deadline!.isBefore(
                              DateTime.now().add(Duration(days: 7)),
                            )) ...[
                              WarningChip(
                                text: AppLocaleScope.of(
                                  context,
                                ).accrueDeadline(state.openedEvent.deadline!),
                              ),
                              SizedBox(height: paddingTheme.largeElementDistance),
                            ],
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
                  maxExtentPrototype: DisappearInfoWidget(
                    event: state.openedEvent,
                  ),
                  child: ColoredBox(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: DisappearInfoWidget(event: state.openedEvent),
                  ),
                ),

                ///header for participants list
                PinnedHeaderSliver(
                  child: ColoredBox(
                    color:
                        Theme.of(context).scaffoldBackgroundColor, //!important
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
                        participant: state.openedEvent.participantsList[index],
                      ),
                    );
                  }, childCount: state.openedEvent.participantsList.length),
                ),
              ],
            );
          } else if (state is SingleEventLoadingState) {
            return Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(paddingTheme.mediumPadding),
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return Scaffold(
              body: Center(child: Text('error')),
            ); //TODO: beautiful error
          }
        },
      ),
    );
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
                      LectorCard(person: event.teachersList.first),
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
                      EventBalanceWidget(
                        actualBalance: event.actualBalance,
                        allBalance: event.allBalance,
                      ),
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
