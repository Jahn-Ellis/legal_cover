import 'package:flutter/material.dart';
import 'package:legal_cover/constants.dart';
import 'package:legal_cover/components/labels.dart';

class TermsOfUseAccept extends StatefulWidget {
  @override
  _TermsOfUseAcceptState createState() => _TermsOfUseAcceptState();
}

class _TermsOfUseAcceptState extends State<TermsOfUseAccept> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TermsOfUseCheckbox(
          checkboxState: isChecked,
          toggleCheckboxState: (bool newValue) {
            setState(() {
              isChecked = newValue;
            });
          },
        ),
        AdHocTextLabel(text: 'Agree & Accept Terms of Use'),
      ],
    );
  }
}

class TermsOfUseCheckbox extends StatelessWidget {
  TermsOfUseCheckbox({this.checkboxState, this.toggleCheckboxState});

  final bool checkboxState;
  final Function toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: legalCoverYellow,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
