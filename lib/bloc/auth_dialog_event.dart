part of 'auth_dialog_bloc.dart';

@immutable
abstract class AuthDialogEvent {
  const AuthDialogEvent();
}

class CodeSentEvent extends AuthDialogEvent {
  final String phone;
  const CodeSentEvent(this.phone);
}

class PinSubmittedEvent extends AuthDialogEvent {
  final String pin;
  const PinSubmittedEvent(this.pin);
}

class AuthEndedEvent extends AuthDialogEvent {
  final String name;
  final String surname;
  const AuthEndedEvent(this.name, this.surname);
}