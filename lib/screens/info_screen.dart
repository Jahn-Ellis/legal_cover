import 'package:flutter/material.dart';
import 'package:legal_cover/components/labels.dart';
import 'package:legal_cover/components/ad_hoc_text.dart';

import 'package:legal_cover/screens/terms_screen.dart';
import 'package:legal_cover/navigation.dart';
import 'package:legal_cover/components/dialog_boxes.dart';

import 'package:provider/provider.dart';
import 'package:legal_cover/model/user_data_handler.dart';
import 'package:legal_cover/constants.dart';

class InfoScreen extends StatelessWidget {
  static const String id = 'info_screen';

  // these have values for later checks
  String name = 'not valid';
  String surname = 'not valid';
  String idNum = 'not valid';
  // String dob = 'not valid';
  String contactNum = 'not valid';
  String email = 'not valid';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<UserDataHandler>(
        builder: (context, userDataHandler, child) {
          return SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    PageTitleLabel(title: 'Complete your information'),
                    AdHocTextLabel(text: infoPageDescription),
                    // TextFieldInput(hint: 'Name'),
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
                            textCapitalization: TextCapitalization.words,
                            decoration: InputDecoration(
                              hintText: 'Name',
                              contentPadding: EdgeInsets.all(15),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              name = value;
                              Provider.of<UserDataHandler>(context,
                                      listen: false)
                                  .updateName(value);
                            },
                          ),
                        ),
                      ),
                    ),
                    // TextFieldInput(hint: 'Surname'),
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
                            textCapitalization: TextCapitalization.words,
                            decoration: InputDecoration(
                              hintText: 'Surname',
                              contentPadding: EdgeInsets.all(15),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              surname = value;
                              Provider.of<UserDataHandler>(context,
                                      listen: false)
                                  .updateSurname(value);
                            },
                          ),
                        ),
                      ),
                    ),
                    // TextFieldInput(hint: 'ID Number'),
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
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'ID Number',
                              contentPadding: EdgeInsets.all(15),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              idNum = value;
                              Provider.of<UserDataHandler>(context,
                                      listen: false)
                                  .updateIdNum(value);
                            },
                          ),
                        ),
                      ),
                    ),
                    // TextFieldInput(hint: 'Date of Birth') -----> removed,
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 20.0, vertical: 10.0),
                    //   child: Container(
                    //     alignment: Alignment.center,
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(30),
                    //         border: Border.all(
                    //           width: 1,
                    //           color: legalCoverBlack,
                    //           style: BorderStyle.solid,
                    //         ),
                    //       ),
                    //       child: TextField(
                    //         decoration: InputDecoration(
                    //           hintText: 'Date of Birth (DD/MM/YY)',
                    //           contentPadding: EdgeInsets.all(15),
                    //           border: InputBorder.none,
                    //         ),
                    //         onChanged: (value) {
                    //           dob = value;
                    //           Provider.of<UserDataHandler>(context,
                    //                   listen: false)
                    //               .updateDob(value);
                    //         },
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // TextFieldInput(hint: 'Contact Number'),
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
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Contact Number',
                              contentPadding: EdgeInsets.all(15),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              contactNum = value;
                              Provider.of<UserDataHandler>(context,
                                      listen: false)
                                  .updateContactNum(value);
                            },
                          ),
                        ),
                      ),
                    ),
                    // TextFieldInput(hint: 'Email'),
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
                              Provider.of<UserDataHandler>(context,
                                      listen: false)
                                  .updateEmail(value);
                            },
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40.0),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (!RegExp(r"^([a-zA-Z-]{2,20})$")
                                      .hasMatch(name) ||
                                  name == 'not valid') {
                                showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        NameErrorDialogBox());
                              } else if (!RegExp(r"^([a-zA-Z ]{2,30})$")
                                      .hasMatch(surname) ||
                                  surname == 'not valid') {
                                showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        SurnameErrorDialogBox());
                              } else if (!RegExp(
                                          r"^([0-9]{13}|[A-Z0-9]{8}|[A-Z0-9]{9})$")
                                      .hasMatch(idNum) ||
                                  idNum == 'not valid') {
                                showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        IdNumErrorDialogBox());
                                // Dob Removed
                                // } else if (!RegExp(r"^([0-9/]{8})$")
                                //         .hasMatch(dob) ||
                                //     dob == 'not valid') {
                                //   showDialog<String>(
                                //       context: context,
                                //       builder: (BuildContext context) =>
                                //           DobErrorDialogBox());
                              } else if (!RegExp(r"^([0-9]{10})$")
                                      .hasMatch(contactNum) ||
                                  contactNum == 'not valid') {
                                showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        ContactNumErrorDialogBox());
                              } else if (!RegExp(
                                          r"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$")
                                      .hasMatch(email) ||
                                  email == 'not valid') {
                                showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        EmailErrorDialogBox());
                              } else {
                                userDataHandler.userData.termsAccepted
                                    ? Navigator.pushReplacementNamed(
                                        context, Navigation.id)
                                    : Navigator.pushReplacementNamed(
                                        context, TermsScreen.id);
                              }
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
              ],
            ),
          );
        },
      ),
    );
  }
}
