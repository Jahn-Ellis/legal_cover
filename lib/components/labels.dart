import 'package:flutter/material.dart';
import 'package:legal_cover/constants.dart';

class PageTitleLabel extends StatelessWidget {
  PageTitleLabel({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        title,
        style: legalCoverRobotoBlack,
      ),
    );
  }
}

class AdHocTextLabel extends StatelessWidget {
  AdHocTextLabel({@required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        text,
        style: legalCoverHindBlack,
      ),
    );
  }
}

class ProfileDataHeadingLabel extends StatelessWidget {
  ProfileDataHeadingLabel({@required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        label,
        style: legalCoverRobotoBlack,
      ),
    );
  }
}

class ProfileUserDetailsLabel extends StatelessWidget {
  ProfileUserDetailsLabel({@required this.details});

  final String details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        details,
        style: legalCoverHindBlack,
      ),
    );
  }
}

class CardDataHeadingLabel extends StatelessWidget {
  CardDataHeadingLabel({@required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        label,
        style: legalCoverRobotoBlack,
      ),
    );
  }
}
