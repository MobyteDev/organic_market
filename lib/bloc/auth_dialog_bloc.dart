import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_dialog_event.dart';

part 'auth_dialog_state.dart';

class AuthDialogBloc extends Bloc<AuthDialogEvent, AuthDialogState> {
  AuthDialogBloc() : super(const PhoneState()) {
    on<CodeSentEvent>(_codeSentHandler);
    on<PinSubmittedEvent>(_pinSubmittedHandler);
    on<AuthEndedEvent>(_authEndedHandler);
  }

  void _codeSentHandler(CodeSentEvent event, Emitter emit) {
    emit(VerificationDialogState(event.phone));
  }

  void _pinSubmittedHandler(PinSubmittedEvent event, Emitter emit) {
    emit(const NameAndSurnameState());
  }

  void _authEndedHandler(AuthEndedEvent event, Emitter emit) {
    emit(const SuccessState());
  }
}
