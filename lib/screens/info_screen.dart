import 'package:flutter/material.dart';
import 'package:legal_cover/components/labels.dart';
import 'package:legal_cover/components/ad_hoc_text.dart';
import 'package:legal_cover/components/text_field.dart';
import 'package:legal_cover/components/buttons.dart';

import 'package:provider/provider.dart';
import 'package:legal_cover/model/user_data_handler.dart';
import 'package:legal_cover/constants.dart';

class InfoScreen extends StatelessWidget {
  static const String id = 'info_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PageTitleLabel(title: 'Complete your information'),
            AdHocTextLabel(text: infoPageDescription),
            // TextFieldInput(hint: 'Name'),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                      hintText: 'Name',
                      contentPadding: EdgeInsets.all(15),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      Provider.of<UserDataHandler>(context, listen: false)
                          .updateName(value);
                    },
                  ),
                ),
              ),
            ),
            // TextFieldInput(hint: 'Surname'),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                      hintText: 'Surname',
                      contentPadding: EdgeInsets.all(15),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      Provider.of<UserDataHandler>(context, listen: false)
                          .updateSurname(value);
                    },
                  ),
                ),
              ),
            ),
            // TextFieldInput(hint: 'ID Number'),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                      hintText: 'ID Number',
                      contentPadding: EdgeInsets.all(15),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      Provider.of<UserDataHandler>(context, listen: false)
                          .updateIdNum(value);
                    },
                  ),
                ),
              ),
            ),
            // TextFieldInput(hint: 'Contact Number'),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                      hintText: 'Contact Number',
                      contentPadding: EdgeInsets.all(15),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      Provider.of<UserDataHandler>(context, listen: false)
                          .updateContactNum(value);
                    },
                  ),
                ),
              ),
            ),
            // TextFieldInput(hint: 'Email'),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                      hintText: 'Email',
                      contentPadding: EdgeInsets.all(15),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      Provider.of<UserDataHandler>(context, listen: false)
                          .updateEmail(value);
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
                  child: InfoActionButton(
                    actionLabel: 'Confirm',
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
