import 'package:flutter/material.dart';
import 'package:legal_cover/screens/loading_screen_login.dart';

import 'package:provider/provider.dart';
import 'package:legal_cover/model/user_data_handler.dart';

// test
import 'package:shared_preferences/shared_preferences.dart';

class LoadingScreenDetails extends StatelessWidget {
  static const String id = 'loading_screen_details';

  @override
  Widget build(BuildContext context) {
    return DetailHandler(
      child: Scaffold(),
    );
  }
}

class DetailHandler extends StatefulWidget {
  DetailHandler({@required this.child});

  final Widget child;

  @override
  _DetailHandlerState createState() => _DetailHandlerState();
}

class _DetailHandlerState extends State<DetailHandler> {
  // test
  SharedPreferences preferences;
  // String nameSF;

  @override
  void initState() {
    super.initState();
    initializePreference().whenComplete(() {
      setState(() {});
    });
  }

  Future<void> initializePreference() async {
    this.preferences = await SharedPreferences.getInstance();
    // checks and assigning
    Provider.of<UserDataHandler>(context, listen: false)
        .updateName(this.preferences.getString("name") ?? '');
    Provider.of<UserDataHandler>(context, listen: false)
        .updateSurname(this.preferences.getString("surname") ?? '');
    Provider.of<UserDataHandler>(context, listen: false)
        .updateIdNum(this.preferences.getString("idNum") ?? '');
    Provider.of<UserDataHandler>(context, listen: false)
        .updateDob(this.preferences.getString("dob") ?? '');
    Provider.of<UserDataHandler>(context, listen: false)
        .updateContactNum(this.preferences.getString("contactNum") ?? '');
    Provider.of<UserDataHandler>(context, listen: false)
        .updateEmail(this.preferences.getString("email") ?? '');
    Provider.of<UserDataHandler>(context, listen: false)
        .updateLogin(this.preferences.getBool("loginStatus") ?? false);
    Provider.of<UserDataHandler>(context, listen: false)
        .updateTerms(this.preferences.getBool("termsAccepted") ?? false);
    Navigator.pushReplacementNamed(context, LoadingScreenLogin.id);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
