import 'package:flutter/material.dart';
import 'package:legal_cover/constants.dart';
import 'package:legal_cover/components/labels.dart';
import 'package:legal_cover/components/ad_hoc_text.dart';

import 'package:legal_cover/components/dialog_boxes.dart';

// Provider
import 'package:provider/provider.dart';
import 'package:legal_cover/model/user_data_handler.dart';

// These are inside this screen due to provider
import 'package:geolocator/geolocator.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class FindMeScreen extends StatelessWidget {
  String location;

  // ---------- Get Location ------------

  getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      location =
          'https://www.google.com/maps/search/?api=1&query=${position.latitude},${position.longitude}';
    } catch (e) {
      print(e);
    }
  }

  // ------------ Send Email -------------

  void sendEmail(
      {name: String,
      surname: String,
      idNum: String,
      contactNum: String,
      email: String,
      location: String}) async {
    String username = EMAIL;
    String password = PASSWORD;

    // as gmail(username, password) is deprecated, opted for SmtpServer

    final smtpServer = SmtpServer(
      'smtp.gmail.com',
      username: username,
      password: password,
      allowInsecure: true,
      ignoreBadCertificate: true,
    );
    // Use the SmtpServer class to configure an SMTP server:
    // final smtpServer = SmtpServer('mail.legalcover.co.za');
    // See the named arguments of SmtpServer for further configuration
    // options.

    // Create our message.
    final message = Message()
      ..from = Address(username, '${name} ${surname}')
      ..recipients.add(RECIPIENT)
      // ..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
      // ..bccRecipients.add(Address('bccAddress@example.com'))
      ..subject = '${name} ${surname} requires legal assistance!'
      ..text =
          '${name} ${surname} has requested legal assistance via the Legal Cover Find Me function.\n\nUser Details\n${name}\n${surname}\n${idNum}\n${contactNum}\n${email}\n\nClick below link for last known location:\n${location}';
    // ..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  }

  // ---------------------------

  @override
  Widget build(BuildContext context) {
    return Consumer<UserDataHandler>(
        builder: (context, userDataHandler, child) {
      return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageTitleLabel(title: 'Need Help?'),
            AdHocTextLabel(text: needHelpDescription),
            // Expanded 'Find Me' button.
            Expanded(
              child: Align(
                alignment: FractionalOffset.center,
                child: ElevatedButton(
                  onPressed: () async {
                    await getLocation();
                    Provider.of<UserDataHandler>(context, listen: false)
                        .updateLocation(location);
                    if (location != null) {
                      sendEmail(
                        name: userDataHandler.userData.name,
                        surname: userDataHandler.userData.surname,
                        idNum: userDataHandler.userData.idNum,
                        contactNum: userDataHandler.userData.contactNum,
                        email: userDataHandler.userData.email,
                        location: userDataHandler.userData.lastKnownLocation,
                      );
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) =>
                              InfoSentDialogBox());
                    } else {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => ErrorDialogBox());
                    }
                  },
                  // -------------------------------------------------------------
                  child: Text('Find Me'),
                  style: ElevatedButton.styleFrom(
                    primary: legalCoverRed,
                    padding: EdgeInsets.all(100),
                    textStyle: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: CircleBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
