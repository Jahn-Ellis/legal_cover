import 'package:flutter/material.dart';
import 'package:legal_cover/components/labels.dart';
import 'package:legal_cover/components/ad_hoc_text.dart';

import 'package:legal_cover/constants.dart';

import 'package:provider/provider.dart';
import 'package:legal_cover/model/user_data_handler.dart';

class HomeScreen extends StatelessWidget {
  // static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Consumer<UserDataHandler>(
      builder: (context, userDataHandler, child) {
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PageTitleLabel(title: 'Welcome'),
              AdHocTextLabel(text: welcomePageText),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Padding(
                      padding: EdgeInsets.all(8.0), // Sets all shadows to show
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          image: DecorationImage(
                              image: AssetImage('images/LegalCoverCard.png'),
                              fit: BoxFit.fill),
                          boxShadow: [
                            BoxShadow(
                              color: legalCoverBlackVar,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      color: surfaceWhite,
                                      boxShadow: [
                                        BoxShadow(
                                          color: legalCoverBlackVar,
                                          offset: Offset(0.0, 1.0), //(x,y)
                                          blurRadius: 6.0,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Icon(
                                        Icons.how_to_reg,
                                        size: 70,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: CardDataHeadingLabel(
                                    label:
                                        '${userDataHandler.userData.name} ${userDataHandler.userData.surname}'),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: CardDataHeadingLabel(
                                    label: '${userDataHandler.userData.idNum}'),
                              ),
                            ],
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
    );
  }
}
