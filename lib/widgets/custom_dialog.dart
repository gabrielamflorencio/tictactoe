import 'package:flutter/material.dart';
import 'package:tictactoe/core/constants.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    required this.title,
    required this.message,
    required this.onPressed,
  });


  final String title;
  final String message;
  final Function onPressed;



  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        ElevatedButton(
          child: Text(RESET_BUTTON_LABEL),
          onPressed: () {
            Navigator.pop(context);
            onPressed();
          },
        ),
      ],
    );
  }
}
