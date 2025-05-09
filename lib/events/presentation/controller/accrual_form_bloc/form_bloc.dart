import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_bloc.freezed.dart';

part 'form_event.dart';

part 'form_state.dart';

class AccrualFormBloc
    extends Bloc<AccrualFormEvent, AccrualValidationFormState> {
  AccrualFormBloc({required int accrualCapacity})
    : super(
        AccrualValidationFormState.notValid(
          sumToSend: 0,
          capacity: accrualCapacity,
          errorMessage: 'zeroOrLess',
        ), //orNotValid
      ) {
    on<AccrualFormEvent>(
      (event, emit) => switch (event) {
        SumChangedEvent() => _sumChangedEvent(event, emit),
      },
    );
  }

  void _sumChangedEvent(SumChangedEvent event, Emitter emit) {
    final state = this.state;
    final newSum = int.tryParse(event.sum);

    if (newSum == null || newSum <= 0) {
      emit(
        AccrualValidationFormState.notValid(
          sumToSend: newSum ?? state.sumToSend,
          capacity: state.capacity,
          errorMessage: 'zeroOrLess',
        ),
      );
      return;
    }

    if (newSum > state.capacity) {
      emit(
        AccrualValidationFormState.notValid(
          sumToSend: newSum,
          capacity: state.capacity,
          errorMessage: 'overflow',
        ),
      );
      return;
    }
    emit(
      AccrualValidationFormState.valid(
        sumToSend: newSum,
        capacity: state.capacity,
      ),
    );
  }
}
