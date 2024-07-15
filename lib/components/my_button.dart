import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      // color: Theme.of(context).primaryColor,
      // padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 18,
        ),
      ),
    );
  }
}
