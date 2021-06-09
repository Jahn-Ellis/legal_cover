import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

// Move variables to another file

String heading = 'Info Sent!';
String body =
    "We'll be in touch soon. If we do not manage to get through to you, we'll check with local emergency services and law enforcement";

// Handle Selection

class DialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoFindMeHandledAlert()
        : AndroidFindMeHandledAlert();
  }
}

class AndroidFindMeHandledAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(heading),
      content: Text(body),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

class CupertinoFindMeHandledAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(heading),
      content: Text(body),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('okay'),
        ),
      ],
    );
  }
}
