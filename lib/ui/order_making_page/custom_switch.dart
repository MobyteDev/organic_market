import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final void Function(bool) onChanged;

  const CustomSwitch({
    Key? key,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 43,
      height: 25,
      toggleSize: 15,
      borderRadius: 20,
      padding: 5,
      inactiveColor: Colors.grey[200]!,
      activeColor: Colors.lightGreenAccent[700]!,
      value: value,
      onToggle: onChanged,
    );
  }
}
