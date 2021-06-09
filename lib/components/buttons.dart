import 'package:flutter/material.dart';
import 'package:legal_cover/constants.dart';
import 'package:legal_cover/screens/info_screen.dart';
import 'package:legal_cover/screens/terms_screen.dart';
import 'package:legal_cover/navigation.dart';

// Extract onPressed Functions to handlers & navigation handler,
// Reduce to 1 button callback

class LoginActionButton extends StatelessWidget {
  LoginActionButton({@required this.actionLabel});

  final String actionLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, InfoScreen.id);
        },
        child: Text(
          actionLabel,
          style: legalCoverRobotoWhite,
        ),
        style: ElevatedButton.styleFrom(
          primary: legalCoverYellow,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

class InfoActionButton extends StatelessWidget {
  InfoActionButton({@required this.actionLabel});

  final String actionLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, TermsScreen.id);
          // ----------------------------------------------------
          // print(InfoScreen);
          // ----------------------------------------------------
        },
        child: Text(
          actionLabel,
          style: legalCoverRobotoWhite,
        ),
        style: ElevatedButton.styleFrom(
          primary: legalCoverYellow,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

class TermsActionButton extends StatelessWidget {
  TermsActionButton({@required this.actionLabel});

  final String actionLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, Navigation.id);
        },
        child: Text(
          actionLabel,
          style: legalCoverRobotoWhite,
        ),
        style: ElevatedButton.styleFrom(
          primary: legalCoverYellow,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
