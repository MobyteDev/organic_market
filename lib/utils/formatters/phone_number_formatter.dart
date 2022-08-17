import 'package:flutter/services.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  final String mask = '+x xxx xxx xx xx';

  PhoneNumberFormatter();

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > 0) {
      if (newValue.text.length > oldValue.text.length) {
        if (newValue.text.length > mask.length) return oldValue;
        if (newValue.text.length == 1)
          return TextEditingValue(
            text: '+${newValue.text}',
            selection:
                TextSelection.collapsed(offset: newValue.selection.end + 1),
          );
        if (newValue.text.length < mask.length &&
            mask[newValue.text.length - 1] == ' ') {
          return TextEditingValue(
            text:
                '${oldValue.text} ${newValue.text.substring(newValue.text.length - 1)}',
            selection:
                TextSelection.collapsed(offset: newValue.selection.end + 1),
          );
        }
      }
    }
    return newValue;
  }
}
