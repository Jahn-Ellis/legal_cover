import 'package:flutter/material.dart';
import 'package:legal_cover/constants.dart';
import 'package:legal_cover/components/labels.dart';
import 'package:legal_cover/components/terms_checkbox.dart';

import 'package:legal_cover/navigation.dart';

import 'package:legal_cover/components/terms_of_use.dart';
import 'package:legal_cover/screens/privacy_policy_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:legal_cover/components/dialog_boxes.dart';

import 'package:provider/provider.dart';
import 'package:legal_cover/model/user_data_handler.dart';

class TermsScreen extends StatelessWidget {
  static const String id = 'terms_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<UserDataHandler>(
        builder: (context, userDataHandler, child) {
          return SafeArea(
            child: Column(
              children: [
                PageTitleLabel(title: 'Terms of Use'),
                // page content
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Padding(
                        padding: const EdgeInsets.all(
                            8.0), // Sets all shadows to show
                        child: Container(
                          // margin: const EdgeInsets.only(bottom: 5.0), // Sets height
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: surfaceWhite,
                            boxShadow: [
                              BoxShadow(
                                color: legalCoverBlackVar,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          // Contents of panel
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                            fontFamily: 'Hind',
                                            color: legalCoverBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: line1,
                                          ),
                                          TextSpan(
                                            text: subheading1,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: line2,
                                          ),
                                          TextSpan(
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () =>
                                                  Navigator.pushNamed(
                                                      context, PolicyScreen.id),
                                            text: subheading2,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: legalCoverRed),
                                          ),
                                          TextSpan(
                                            text: line3,
                                          ),
                                          TextSpan(
                                            text: subheading3,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: line4,
                                          ),
                                          TextSpan(
                                            text: subheading4,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: line5,
                                          ),
                                          TextSpan(
                                            text: line6,
                                          ),
                                          TextSpan(
                                            text: subheading5,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: line7,
                                          ),
                                          TextSpan(
                                            text: line7,
                                          ),
                                          TextSpan(
                                            text: line9,
                                          ),
                                          TextSpan(
                                            text: subheading6,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: line10,
                                          ),
                                          TextSpan(
                                            text: subheading7,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: line11,
                                          ),
                                          TextSpan(
                                            text: subheading8,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: line12,
                                          ),
                                          TextSpan(
                                            text: subheading9,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: line13,
                                          ),
                                          TextSpan(
                                            text: line14,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TermsOfUseAccept(),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        onPressed: () {
                          userDataHandler.userData.termsAccepted
                              ? Navigator.pushReplacementNamed(
                                  context, Navigation.id)
                              : showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      TermsDialogBox());
                        },
                        child: Text(
                          'Confirm',
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
              ],
            ),
          );
        },
      ),
    );
  }
}
