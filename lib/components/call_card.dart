import 'package:flutter/material.dart';
import 'package:legal_cover/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class CallCard extends StatelessWidget {
  CallCard(
      {@required this.picture,
      @required this.heading,
      @required this.subHeading,
      @required this.actionLabel,
      @required this.number});

  final String picture;
  final String heading;
  final String subHeading;
  final String actionLabel;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Sets all shadows to show
          child: Container(
            // margin: const EdgeInsets.only(bottom: 5.0), // Sets height
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(
                  image: AssetImage('images/$picture.jpg'),
                  fit: BoxFit.fitWidth),
              boxShadow: [
                BoxShadow(
                  color: legalCoverBlackVar,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            // Dark Tint over Image
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: legalCoverBlack.withOpacity(0.5),
              ),
              // Text and Button Contents
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        heading,
                        style: legalCoverRobotoWhite,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        subHeading,
                        style: legalCoverHindWhite,
                      ),
                    ),
                    // Button Section - not extracted. - to review.
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        onPressed: () => launch("tel:$number"),
                        child: Text(
                          actionLabel,
                          style: legalCoverRobotoBlack,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: surfaceWhite,
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
