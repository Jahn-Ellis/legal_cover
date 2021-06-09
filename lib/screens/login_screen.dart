import 'package:flutter/material.dart';
import 'package:legal_cover/components/labels.dart';
import 'package:legal_cover/components/ad_hoc_text.dart';
import 'package:legal_cover/components/text_field.dart';
import 'package:legal_cover/components/buttons.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PageTitleLabel(title: 'Login'),
            AdHocTextLabel(text: loginPageDescription),
            TextFieldInput(hint: 'Email'),
            TextFieldInput(hint: '4-Digit PIN'),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: LoginActionButton(
                    actionLabel: 'Log in',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
