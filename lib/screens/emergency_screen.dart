import 'package:flutter/material.dart';
import 'package:legal_cover/components/call_card.dart';
import 'package:legal_cover/components/email_card.dart';
import 'package:legal_cover/components/labels.dart';

class EmergencyScreen extends StatelessWidget {
  // static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          PageTitleLabel(title: 'Emergency Contacts'),
          CallCard(
            picture: 'Police',
            heading: 'Police',
            subHeading: 'Law Enforcement',
            actionLabel: 'Call',
            number: '10111',
          ),
          CallCard(
            picture: 'Medical',
            heading: 'EMS',
            subHeading: 'Emergency Medical Services',
            actionLabel: 'Call',
            number: '10177',
          ),
          CallCard(
            picture: 'Fire',
            heading: 'Fire',
            subHeading: 'Fire Brigade',
            actionLabel: 'Call',
            number: '112',
          ),
          PageTitleLabel(title: 'Contact Cover Legal'),
          CallCard(
            picture: 'Phone',
            heading: 'Phone',
            subHeading: 'Speak to an agent',
            actionLabel: 'Call',
            number: '086 123 7779',
          ),
          EmailCard(
            picture: 'Email',
            heading: 'Email',
            subHeading: 'Send us an email',
            actionLabel: 'Email',
          ),
        ],
      ),
    );
  }
}
