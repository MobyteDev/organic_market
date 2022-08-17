import 'package:flutter/services.dart';

class CardNameFormatter extends TextInputFormatter {
  CardNameFormatter();

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > 0) {
      if (newValue.text.length > oldValue.text.length) {
        newValue.text.toUpperCase();
        return TextEditingValue(
          text: '${newValue.text.toUpperCase()}',
          selection: TextSelection.collapsed(offset: newValue.selection.end),
        );
      }
    }
    return newValue;
  }
}
