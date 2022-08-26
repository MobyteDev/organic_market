part of 'auth_dialog_bloc.dart';

@immutable
abstract class AuthDialogState {
  const AuthDialogState();
}

class PhoneState extends AuthDialogState {
  const PhoneState();
}

class VerificationDialogState extends AuthDialogState {
  final String phone;
  const VerificationDialogState(this.phone);
}

class NameAndSurnameState extends AuthDialogState {
  const NameAndSurnameState();
}

class SuccessState extends AuthDialogState {
  const SuccessState();
}