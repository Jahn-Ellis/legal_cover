import 'package:flutter/material.dart';
import 'package:legal_cover/constants.dart';
import 'package:legal_cover/components/labels.dart';
import 'package:legal_cover/screens/info_screen.dart';

import 'package:provider/provider.dart';
import 'package:legal_cover/model/user_data_handler.dart';

import 'package:legal_cover/screens/loading_screen_login.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserDataHandler>(
      builder: (context, userDataHandler, child) {
        return SafeArea(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PageTitleLabel(title: 'Profile'),
                  Padding(
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
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pushReplacementNamed(
                                                context, LoadingScreenLogin.id);
                                            Provider.of<UserDataHandler>(
                                                    context,
                                                    listen: false)
                                                .updateLogin(false);
                                          },
                                          child: Text(
                                            'Log out',
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
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.edit),
                                        tooltip: 'Edit User Information',
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, InfoScreen.id);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                ProfileDataHeadingLabel(
                                  label: 'Name',
                                ),
                                ProfileUserDetailsLabel(
                                  details: '${userDataHandler.userData.name}',
                                ),
                                ProfileDataHeadingLabel(
                                  label: 'Surname',
                                ),
                                ProfileUserDetailsLabel(
                                  details:
                                      '${userDataHandler.userData.surname}',
                                ),
                                ProfileDataHeadingLabel(
                                  label: 'ID Number',
                                ),
                                ProfileUserDetailsLabel(
                                  details: '${userDataHandler.userData.idNum}',
                                ),
                                ProfileDataHeadingLabel(
                                  label: 'Date of Birth',
                                ),
                                ProfileUserDetailsLabel(
                                  details: '${userDataHandler.userData.dob}',
                                ),
                                ProfileDataHeadingLabel(
                                  label: 'Contact Number',
                                ),
                                ProfileUserDetailsLabel(
                                  details:
                                      '${userDataHandler.userData.contactNum}',
                                ),
                                ProfileDataHeadingLabel(
                                  label: 'Email',
                                ),
                                ProfileUserDetailsLabel(
                                  details: '${userDataHandler.userData.email}',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
