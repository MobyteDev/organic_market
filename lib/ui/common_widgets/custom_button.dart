import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonLabel;
  final void Function() onTap;
  final EdgeInsets padding;

  const CustomButton({
    Key? key,
    required this.buttonLabel,
    required this.onTap,
    this.padding = const EdgeInsets.all(20),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent[700],
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            padding: padding,
            child: Text(
              buttonLabel,
              style: const TextStyle(
                fontSize: 19,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
