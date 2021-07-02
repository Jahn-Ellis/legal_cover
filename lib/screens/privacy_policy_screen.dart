import 'package:flutter/material.dart';
import 'package:legal_cover/constants.dart';
import 'package:legal_cover/components/labels.dart';
import 'package:legal_cover/components/buttons.dart';

import 'package:legal_cover/components/privacy_policy.dart';

class PolicyScreen extends StatelessWidget {
  static const String id = 'policy_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PageTitleLabel(title: 'Privacy Policy'),
            // page content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Padding(
                    padding:
                        const EdgeInsets.all(8.0), // Sets all shadows to show
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
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: line1,
                                      ),
                                      TextSpan(
                                        text: line2,
                                      ),
                                      TextSpan(
                                        text: subheading1,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: line3,
                                      ),
                                      TextSpan(
                                        text: subheading2,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: line4,
                                      ),
                                      TextSpan(
                                        text: subheading3,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: line5,
                                      ),
                                      TextSpan(
                                        text: subheading4,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: line6,
                                      ),
                                      TextSpan(
                                        text: line7,
                                      ),
                                      TextSpan(
                                        text: line8,
                                      ),
                                      TextSpan(
                                        text: subheading5,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: line9,
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
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: PolicyActionButton(
                  actionLabel: 'Confirm',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
