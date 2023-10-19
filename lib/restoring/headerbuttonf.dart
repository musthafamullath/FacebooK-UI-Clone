import 'package:flutter/material.dart';

Widget headerbutton({
  required String textButton,
  required IconData iconButton,
  required Color colorButton,
  required void Function() actionbutton,
}) {
  return TextButton.icon(
      onPressed: actionbutton,
      icon: Icon(
        iconButton,
        color: colorButton,
      ),
      label: Text(textButton));
}
