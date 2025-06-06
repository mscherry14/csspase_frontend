import 'package:csspace_app/events/presentation/controller/accrual_form_bloc/form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/locale/widget/app_locale_scope.dart';
import '../../../common/navigation/navigation.dart';
import '../../../common/theme/theme.dart';
import '../../../common/utils/widget/dialog_with_close_button.dart';
import '../../../common/utils/widget/smth_went_wrong_dialog_body.dart';
import '../../domain/accrual_bloc/accrual_bloc.dart';
import '../../domain/single_event_bloc/single_event_bloc.dart';
import 'accrual_text_field.dart';

class AccrualDialog extends StatelessWidget {
  const AccrualDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return DialogWithCloseButton(
      child: BlocBuilder<AccrualBloc, AccrualState>(
        buildWhen: (prev, curr) {
          if (prev is WaitForSendingState) return false;
          return prev != curr;
        },
        builder: (context, state) {
          ///INIT
          if (state is InitialAccrualState) {
            return ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200),
              child: Center(child: CircularProgressIndicator()),
            );

            ///BODY OF NORM WAY CONFIRMATION
          } else if (state is WaitForSendingState) {
            return BlocProvider(
              create:
                  (context) =>
                      AccrualFormBloc(accrualCapacity: state.tokensCapacity),
              child: _DialogBody(state: state),
            );

            ///BODY OF SMTH WENT WRONG
          } else {
            return SomethingWentWrongDialogBody();
          }
        },
      ),
      onCloseNavigation: () {
        final eventId =
            (Router.of(context).routerDelegate.currentConfiguration
                    as ConcreteEventRoutePath)
                .eventId;
        Router.of(context).routerDelegate.setNewRoutePath(
          EventInfoRoutePath(eventId: eventId),
        ); //todo: clear navigation
      },
    );
  }
}

class _DialogBody extends StatelessWidget {
  const _DialogBody({super.key, required this.state});

  final WaitForSendingState state;

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Text(
                AppLocaleScope.of(context).accrualConfirmation,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            const SizedBox(width: 32, height: 24), //todo: ???
          ],
        ),
        SizedBox(height: paddingTheme.mediumElementDistance),

        ///HERE PARTICIPANT CARD WITHOUT BUTTON
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              state.recipient.name,
              style: Theme.of(context).textTheme.headlineMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            //SizedBox(height: paddingTheme.minimalElementDistance),
            Text(
              AppLocaleScope.of(
                context,
              ).participantEventAccrual(state.recipient.sent),
              style: Theme.of(context).textTheme.labelMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),

        SizedBox(height: paddingTheme.mediumElementDistance),

        ///HERE ENTER ACCRUAL PART
        AccrualTextField(capacity: state.tokensCapacity),
        SizedBox(height: paddingTheme.mediumElementDistance),

        /// ACCRUAL BUTTON
        BlocListener<AccrualBloc, AccrualState>(
          listenWhen:
              (context, state) =>
                  state is AccrualSuccessState || state is AccrualErrorState,
          listener: (context, state) {
            final eventId =
                (Router.of(context).routerDelegate.currentConfiguration
                        as ConcreteEventRoutePath)
                    .eventId;

            if (state is AccrualSuccessState) {
              context.read<SingleEventBloc>().add(
                SingleEventEvent.reload(eventId: eventId), //TODO: single event scope
              );
              Router.of(context).routerDelegate.setNewRoutePath(
                EventTokenSendingSuccessRoutePath(
                  eventId: eventId,
                  receiverName: state.receiverName,
                  amount: state.accrual,
                ),
              ); //todo: clear navigation
            } else if (state is AccrualErrorState) {
              context.read<SingleEventBloc>().add(
                SingleEventEvent.reload(eventId: eventId), //TODO single event scope
              );
              Router.of(context).routerDelegate.setNewRoutePath(
                EventTokenSendingErrorRoutePath(
                  eventId: eventId,
                  errorMessage: state.message,
                ),
              ); //todo: clear navigation
            }
          },
          child: SizedBox(
            width: double.infinity,
            child: BlocBuilder<AccrualFormBloc, AccrualValidationFormState>(
              buildWhen: (prev, curr) => prev != curr,
              builder: (context, state) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(32, 44)),
                  onPressed: state is AccrualValidFormState ? () {
                    final int sum =
                        BlocProvider.of<AccrualFormBloc>(
                          context,
                          listen: false,
                        ).state.sumToSend;
                    context.read<AccrualBloc>().add(
                      AccrualEvent.send(sum: sum), //TODO
                    );
                  } : null,
                  child: Text(
                    AppLocaleScope.of(context).accrue,
                    style: Theme.of(
                      context,
                    ).textTheme.headlineSmall?.apply(color: DarkThemeConstants.background),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
