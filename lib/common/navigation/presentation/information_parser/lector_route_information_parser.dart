import 'package:csspace_app/common/navigation/presentation/information_parser/role_route_parser.dart';
import 'package:flutter/material.dart';

import '../paths/custom_route_path.dart';

class LectorRouteInformationParser
    extends RoleRouteInformationParser<LectorRoutePath> {
  @override
  Future<CustomRoutePath> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final Uri uri = routeInformation.uri;

    if (uri.pathSegments.isEmpty) {
      return EventsListRoutePath();

      /// default redirection
    } else {
      switch (uri.pathSegments[0]) {
        case "teacher":
          final subUri = uri.replace(pathSegments: uri.pathSegments.sublist(1));
          return await parseSubPath(
            RouteInformation(uri: subUri, state: routeInformation.state),
          );
        default:
          return EventsListRoutePath();

        /// default redirection
      }
    }
  }

  @override
  RouteInformation restoreRouteInformation(CustomRoutePath configuration) {
    final segments = <String>['', 'teacher'];
    if (configuration is LectorRoutePath) {
      final res = restoreSubPath(configuration);
      if (res.uri.pathSegments[0] == "") {
        segments.addAll(res.uri.pathSegments.sublist(1));
      } else {
        segments.addAll(res.uri.pathSegments);
      }
      final uri = res.uri.replace(pathSegments: segments);
      return RouteInformation(uri: uri, state: res.state);
    } else {
      ///default redirection
      return RouteInformation(uri: Uri(pathSegments: segments));
    }
  }

  @override
  Future<LectorRoutePath> parseSubPath(
    RouteInformation routeInformation,
  ) async {
    final Uri uri = routeInformation.uri;
    // Handle '/'
    if (uri.pathSegments.isEmpty) {
      return EventsListRoutePath(); //todo:???
    } else {
      switch (uri.pathSegments[0]) {
        case 'events':
          if (uri.pathSegments.length > 1) {
            if (uri.pathSegments.length == 2) {
              return EventInfoRoutePath(eventId: uri.pathSegments[1]);
            } else {
              if (uri.pathSegments.length == 3 &&
                  uri.pathSegments[2] == 'send_tokens') {
                //try
                return EventTokenAccrualRoutePath(
                  eventId: uri.pathSegments[1],
                  personId: uri.queryParameters['participant_id'] ?? '',
                );
              } else if (uri.pathSegments.length == 3 &&
                  uri.pathSegments[2] == 'sending_result') {
                final payload = _parseBool(uri.queryParameters['success']);
                final message = uri.queryParameters['message'];
                final receiverName = uri.queryParameters['receiver_name'];
                final amount = _parseInt(uri.queryParameters['amount']);
                return payload
                    ? EventTokenSendingSuccessRoutePath(
                      eventId: uri.pathSegments[1],
                      receiverName: receiverName ?? '',
                      amount: amount,
                    )
                    : EventTokenSendingErrorRoutePath(
                      eventId: uri.pathSegments[1],
                      errorMessage: message,
                    );
              } else {
                return EventsListRoutePath();

                /// default redirection
              }
            }
          } else {
            return EventsListRoutePath();

            /// default redirection
          }
        default:
          return EventsListRoutePath();

        /// default redirection
      }
    }
  }

  @override
  RouteInformation restoreSubPath(LectorRoutePath configuration) {
    switch (configuration) {
      case EventRoutePath():
        final segments = <String>['', 'events'];
        switch (configuration) {
          case EventsListRoutePath():
            return RouteInformation(uri: Uri(pathSegments: segments));
          case EventInfoRoutePath():
            segments.add((configuration).eventId);
            return RouteInformation(uri: Uri(pathSegments: segments));
          case EventTokenAccrualRoutePath():
            segments.add((configuration).eventId);
            segments.add("send_tokens");
            return RouteInformation(
            uri: Uri(
              pathSegments: segments,
              queryParameters: {
                'participant_id': configuration.personId,
              },
            ),
          );

          case EventTokenSendingSuccessRoutePath():
            segments.add((configuration).eventId);
            segments.add("sending_result");
            return RouteInformation(
              uri: Uri(
                pathSegments: segments,
                queryParameters: {
                  "success": "true",
                  'receiver_name': configuration.receiverName,
                  'amount': configuration.amount.toString(),
                },
              ),
            );
          case EventTokenSendingErrorRoutePath():
            segments.add((configuration).eventId);
            segments.add("sending_result");
            return RouteInformation(
              uri: Uri(
                pathSegments: segments,
                queryParameters: {
                  "success": "false",
                  "message": configuration.errorMessage
                },
              ),
            );
        }
    }
  }

  bool _parseBool(String? value) {
    return value?.toLowerCase() == 'true';
  }

  int _parseInt(String? value) {
    ///Returns 0 if not parsed
    return int.tryParse(value ?? '0') ?? 0;
  }
}
