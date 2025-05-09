import 'package:csspace_app/common/locale/locale.dart';
import 'package:csspace_app/events/domain/events_bloc/events_bloc.dart';
import 'package:csspace_app/events/presentation/widget/event_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/theme/theme.dart';
import '../../common/utils/widget/menu_button.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              delegate: EventListDelegate(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),

            ///participants list
            BlocBuilder<EventsBloc, EventsState>(
              buildWhen: (prev, curr) {
                return prev != curr;
              },
              builder: (BuildContext context, EventsState state) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate((
                    BuildContext context,
                    int index,
                  ) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: paddingTheme.mediumPadding,
                        vertical: paddingTheme.mediumPadding / 2,
                      ),
                      child: EventCard(event: state.events[index]),
                    );
                  }, childCount: state.events.length),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class EventListDelegate extends SliverPersistentHeaderDelegate {
  final Color color;

  const EventListDelegate({required this.color});

  @override
  double get maxExtent => minExtent * 2.5;

  @override
  double get minExtent => 56.0;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final progress = (shrinkOffset / (maxExtent - minExtent)).clamp(0.0, 1.0);
    final disappear = Curves.easeOut.transform(progress);
    final appear = Curves.easeIn.transform(progress);

    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;

    return ColoredBox(
      color: color,
      child: Padding(
        padding: EdgeInsets.all(paddingTheme.mediumPadding),
        child: Stack(
          fit: StackFit.expand,
          children: [
            AnimatedOpacity(
              opacity: 1.0 - disappear,
              duration: const Duration(milliseconds: 200),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  AppLocaleScope.of(context).events,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                opacity: appear,
                duration: const Duration(milliseconds: 200),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    AppLocaleScope.of(context).events,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
            ),
            Positioned(bottom: -8, right: 0, child: MenuButton()),
          ],
        ),
      ),
    );
  }

  @override
  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
