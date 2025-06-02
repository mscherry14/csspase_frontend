import 'package:csspace_app/events/domain/events_bloc/events_bloc.dart';
import 'package:csspace_app/events/presentation/scope/single_event_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../events/events.dart';
import '../../modal_dialog_page.dart';
import '../../paths/custom_route_path.dart';

class LectorRouterDelegate extends RouterDelegate<LectorRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<LectorRoutePath> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  LectorRouterDelegate()
    : navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'global');

  LectorRoutePath _currentConfiguration = EventsListRoutePath();

  @override
  LectorRoutePath get currentConfiguration {
    return _currentConfiguration;
  }

  @override
  Widget build(BuildContext context) {
    final pages = <Page>[
      MaterialPage(canPop: false, child: EventListScreen()),
      if (_currentConfiguration is ConcreteEventRoutePath)
        MaterialPage(child: EventInfoScreen()),
      if (_currentConfiguration is EventTokenAccrualRoutePath)
        ModalDialogPage(
          key: ValueKey('send_tokens'),
          child: AccrualScope(
            eventId:
                (_currentConfiguration as EventTokenAccrualRoutePath).eventId,
            recipientId:
                (_currentConfiguration as EventTokenAccrualRoutePath).personId,
            child: AccrualDialog(),
          ),
        ),
      if (_currentConfiguration is EventTokenSendingSuccessRoutePath)
        ModalDialogPage(key: ValueKey('result'), child: AccrualSuccessDialog()),
      if (_currentConfiguration is EventTokenSendingErrorRoutePath)
        ModalDialogPage(
          key: ValueKey('result'),
          child: AccrualErrorDialog(
            errorMessage:
                (_currentConfiguration as EventTokenSendingErrorRoutePath)
                    .errorMessage,
          ),
        ),
    ];
    return EventsScope(
      child:
          (_currentConfiguration is EventsListRoutePath)
              ? Navigator(
                key: navigatorKey,
                pages: pages,
                onDidRemovePage: (page) {},
              )
              : SingleEventScope(
                eventId:
                    (_currentConfiguration as ConcreteEventRoutePath).eventId,
                child: Navigator(
                  key: navigatorKey,
                  pages: pages,
                  onDidRemovePage: (page) {},
                ),
              ),
    );
  }

  @override
  Future<void> setNewRoutePath(LectorRoutePath configuration) async {
    if (configuration is EventsListRoutePath) {
      navigatorKey.currentContext?.read<EventsBloc>().add(EventsEvent.reload());
    }
    _currentConfiguration = configuration;
    notifyListeners();
  }
}
