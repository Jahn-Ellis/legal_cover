import 'package:flutter/material.dart';
import 'package:legal_cover/constants.dart';

class TextFieldInput extends StatelessWidget {
  TextFieldInput({@required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              width: 1,
              color: legalCoverBlack,
              style: BorderStyle.solid,
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: hint,
              contentPadding: EdgeInsets.all(15),
              border: InputBorder.none,
            ),
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
