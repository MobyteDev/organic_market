import 'package:flutter/services.dart';

class CardDateFormatter extends TextInputFormatter {
  CardDateFormatter();

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > 0) {
      if (newValue.text.length > oldValue.text.length) {
        // if (newValue.text.length < mask.length &&
        //     mask[newValue.text.length - 1] == separator) {
        //   return TextEditingValue(
        //     text:
        //         '${oldValue.text}$separator${newValue.text.substring(newValue.text.length - 1)}',
        //     selection:
        //         TextSelection.collapsed(offset: newValue.selection.end + 1),
        //   );
        // }
        if (newValue.text.length == 3) {
          return TextEditingValue(
            text:
                '${oldValue.text}/${newValue.text.substring(newValue.text.length - 1)}',
            selection:
                TextSelection.collapsed(offset: newValue.selection.end + 1),
          );
        }
      }
    }
    return newValue;
  }
}
