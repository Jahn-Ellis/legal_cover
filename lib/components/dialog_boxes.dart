import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

// ---------- Location Sent Notification -----------

String infoSentHeading = 'Info Sent!';
String infoSentBody = "We'll be in touch soon to assist you.";

class InfoSentDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? CupertinoInfoSentAlert() : AndroidInfoSentAlert();
  }
}

class AndroidInfoSentAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(infoSentHeading),
      content: Text(infoSentBody),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

class CupertinoInfoSentAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(infoSentHeading),
      content: Text(infoSentBody),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

// ---------- Location Error Notification -----------

String errorHeading = 'Error';
String errorBody = "Please make sure you have access to the internet.";

class ErrorDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? CupertinoErrorAlert() : AndroidErrorAlert();
  }
}

class AndroidErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(errorHeading),
      content: Text(errorBody),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

class CupertinoErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(errorHeading),
      content: Text(errorBody),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

// ------- Incorrect Pin Provided --------------

String pinHeading = 'Incorrect Pin';
String pinBody = 'Please try again.';

class PinDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? CupertinoPinAlert() : AndroidPinAlert();
  }
}

class AndroidPinAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(pinHeading),
      content: Text(pinBody),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

class CupertinoPinAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(pinHeading),
      content: Text(pinBody),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

// ------- Accept Terms Prompt ---------

String termsHeading = 'Accept Terms';
String termsBody = 'Please accept the Terms of Use to continue.';

class TermsDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? CupertinoTermsAlert() : AndroidTermsAlert();
  }
}

class AndroidTermsAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(termsHeading),
      content: Text(termsBody),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

class CupertinoTermsAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(termsHeading),
      content: Text(termsBody),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

// ------- TextField Email Input Errors --------------

String emailErrorHeading = 'Email Incorrect';
String emailErrorBody = 'Please enter a valid email.';

class EmailErrorDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoEmailErrorAlert()
        : AndroidEmailErrorAlert();
  }
}

class AndroidEmailErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(emailErrorHeading),
      content: Text(emailErrorBody),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

class CupertinoEmailErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(emailErrorHeading),
      content: Text(emailErrorBody),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

// ------- TextField Name Input Errors --------------

String nameErrorHeading = 'Invalid Name';
String nameErrorBody = 'Please enter a valid name.';

class NameErrorDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? CupertinoNameErrorAlert() : AndroidNameErrorAlert();
  }
}

class AndroidNameErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(nameErrorHeading),
      content: Text(nameErrorBody),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

class CupertinoNameErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(nameErrorHeading),
      content: Text(nameErrorBody),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

// ------- TextField Surname Input Errors --------------

String surnameErrorHeading = 'Invalid Surname';
String surnameErrorBody = 'Please enter a valid surname.';

class SurnameErrorDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoSurnameErrorAlert()
        : AndroidSurnameErrorAlert();
  }
}

class AndroidSurnameErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(surnameErrorHeading),
      content: Text(surnameErrorBody),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

class CupertinoSurnameErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(surnameErrorHeading),
      content: Text(surnameErrorBody),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

// ------- TextField IdNum Input Errors --------------

String idNumErrorHeading = 'Invalid ID Number';
String idNumErrorBody = 'Please enter a valid ID number.';

class IdNumErrorDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoIdNumErrorAlert()
        : AndroidIdNumErrorAlert();
  }
}

class AndroidIdNumErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(idNumErrorHeading),
      content: Text(idNumErrorBody),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

class CupertinoIdNumErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(idNumErrorHeading),
      content: Text(idNumErrorBody),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

// ------- TextField Dob Input Errors --------------

String dobErrorHeading = 'Invalid Date of Birth';
String dobErrorBody = 'Please enter a valid date of birth.';

class DobErrorDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? CupertinoDobErrorAlert() : AndroidDobErrorAlert();
  }
}

class AndroidDobErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(dobErrorHeading),
      content: Text(dobErrorBody),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

class CupertinoDobErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(dobErrorHeading),
      content: Text(dobErrorBody),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

// ------- TextField ContactNum Input Errors --------------

String contactNumErrorHeading = 'Invalid Contact Number';
String contactNumErrorBody = 'Please enter a valid contact number.';

class ContactNumErrorDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoContactNumErrorAlert()
        : AndroidContactNumErrorAlert();
  }
}

class AndroidContactNumErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(contactNumErrorHeading),
      content: Text(contactNumErrorBody),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}

class CupertinoContactNumErrorAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(contactNumErrorHeading),
      content: Text(contactNumErrorBody),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: Text('OK'),
        ),
      ],
    );
  }
}
