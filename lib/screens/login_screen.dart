import 'package:flutter/material.dart';
import 'package:legal_cover/components/labels.dart';
import 'package:legal_cover/components/ad_hoc_text.dart';

import 'package:legal_cover/constants.dart';
import 'package:legal_cover/screens/info_screen.dart';
import 'package:legal_cover/navigation.dart';
import 'package:legal_cover/components/dialog_boxes.dart';

import 'package:provider/provider.dart';
import 'package:legal_cover/model/user_data_handler.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';
  String code;
  String email;
  var msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<UserDataHandler>(
        builder: (context, userDataHandler, child) {
          return SafeArea(
            child: Column(
              children: [
                PageTitleLabel(title: 'Login'),
                AdHocTextLabel(text: loginPageDescription),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          email = value;
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
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
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        controller: msgController,
                        decoration: InputDecoration(
                          hintText: '5 Digit Pin',
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          code = value;
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // check if email empty
                            if (email == null ?? '') {
                              showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      EmailErrorDialogBox());
                            }
                            // check email validation
                            else if (!RegExp(
                                    r"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$")
                                .hasMatch(email)) {
                              showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      EmailErrorDialogBox());
                            }
                            // check pin input & notify
                            else if (code == legalCoverPin) {
                              if (userDataHandler.userData.name == '') {
                                Navigator.pushReplacementNamed(
                                    context, InfoScreen.id);
                              } else {
                                Navigator.pushReplacementNamed(
                                    context, Navigation.id);
                              }
                              Provider.of<UserDataHandler>(context,
                                      listen: false)
                                  .updateLogin(true);
                            } else {
                              msgController.clear();
                              showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      PinDialogBox());
                            }
                          },
                          child: Text(
                            'Login',
                            style: legalCoverRobotoWhite,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: legalCoverRed,
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
