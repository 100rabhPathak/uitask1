import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;

  final VoidCallback onTap;
  const Button(
      {Key? key,
      required this.color,
      required this.textColor,
      required this.text,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 180,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(width: 2.0)),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          )),
    );
  }
}
