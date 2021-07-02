import 'package:flutter/material.dart';
import 'package:legal_cover/constants.dart';

// Extract onPressed Functions to handlers & navigation handler,
// Reduce to 1 button callback

// Most other buttons placed within their respective screens due to validation
// checks and access to provider requirements

class PolicyActionButton extends StatelessWidget {
  PolicyActionButton({@required this.actionLabel});

  final String actionLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
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
