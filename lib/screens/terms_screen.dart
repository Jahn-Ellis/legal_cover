import 'package:flutter/material.dart';
import 'package:legal_cover/constants.dart';
import 'package:legal_cover/components/labels.dart';
import 'package:legal_cover/components/ad_hoc_text.dart';
import 'package:legal_cover/components/buttons.dart';
import 'package:legal_cover/components/terms_checkbox.dart';

class TermsScreen extends StatelessWidget {
  static const String id = 'terms_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                                child: Text(termsOfUse),
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
                child: TermsActionButton(
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
