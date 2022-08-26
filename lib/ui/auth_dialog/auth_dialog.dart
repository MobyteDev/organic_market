import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organic_market/bloc/auth_dialog_bloc.dart';
import 'package:organic_market/ui/auth_dialog/name_and_surname_dialog.dart';
import 'package:organic_market/ui/auth_dialog/phone_dialog.dart';
import 'package:organic_market/ui/auth_dialog/verification_dialog.dart';

class AuthDialog extends StatelessWidget {
  const AuthDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthDialogBloc(),
      child: BlocConsumer<AuthDialogBloc, AuthDialogState>(
        builder: (context, state) {
          if (state is PhoneState) {
            return PhoneDialog();
          }
          if (state is VerificationDialogState) {
            return VerificationDialog(phone: state.phone,);
          }
          if (state is NameAndSurnameState) {
            return NameAndSurnameDialog();
          }
          else
            return Text("Error");
        },
        listener: (context, state) {
          if (state is SuccessState) {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}

