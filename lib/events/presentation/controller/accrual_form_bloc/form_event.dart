part of 'form_bloc.dart';

@immutable
sealed class AccrualFormEvent {
  const AccrualFormEvent();
}

class SumChangedEvent extends AccrualFormEvent {
  const SumChangedEvent(this.sum);

  final String sum;
}
