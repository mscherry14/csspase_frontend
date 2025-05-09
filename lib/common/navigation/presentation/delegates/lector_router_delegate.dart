import 'package:flutter/material.dart';

import '../../../../events/events.dart';
import '../modal_dialog_page.dart';
import '../paths/custom_route_path.dart';

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
        MaterialPage(
          child: EventInfoScreen(
            eventId: (_currentConfiguration as ConcreteEventRoutePath).eventId,
          ),
        ),
      if (_currentConfiguration is EventTokenAccrualRoutePath)
        ModalDialogPage(
          key: ValueKey('send_tokens'),
          child:
          AccrualScope(
            eventId:
            (_currentConfiguration as EventTokenAccrualRoutePath)
                .eventId,
            recipientId: (_currentConfiguration as EventTokenAccrualRoutePath).personId,
            child: AccrualDialog(),
          ),
        ),
      if (_currentConfiguration is EventTokenSendingResultRoutePath)
        ModalDialogPage(
          key: ValueKey('result'),
          child:
          (_currentConfiguration as EventTokenSendingResultRoutePath)
              .success
              .payload
              ? AccrualSuccessDialog()
              : AccrualErrorDialog(), //PurchaseConfirmationPage(productId: productId),
        ),
    ];
    return
      EventsScope(
      child:
      Navigator(
        key: navigatorKey,
        pages: pages,
        onDidRemovePage: (page) {
        },
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(LectorRoutePath configuration) async {
    _currentConfiguration = configuration;
    notifyListeners();
  }
}
