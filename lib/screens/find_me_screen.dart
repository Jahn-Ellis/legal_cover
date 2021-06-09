import 'package:flutter/material.dart';
import 'package:legal_cover/components/labels.dart';
import 'package:legal_cover/components/ad_hoc_text.dart';
import 'package:legal_cover/model/location_handler.dart';

import 'package:legal_cover/components/dialog_boxes.dart';
import 'package:legal_cover/screens/info_screen.dart';

class FindMeScreen extends StatelessWidget {
  final locationHandler = LocationHandler();

  @override
  Widget build(BuildContext context) {
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
                // ----------------- test screen navigation --------------------
                onPressed: () {
                  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => DialogBox());

                  // Platform.isIOS ? CupertinoAlertDialogBox() : AndroidAlertDialogBox());
                  // locationHandler.getLocation();
                },
                // -------------------------------------------------------------
                child: Text('Find Me'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFD400),
                  padding: EdgeInsets.all(100),
                  textStyle: TextStyle(
                    fontSize: 16,
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
  }
}
