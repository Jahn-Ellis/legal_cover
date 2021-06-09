import 'package:flutter/material.dart';
import 'package:legal_cover/navigation.dart';
import 'package:legal_cover/screens/login_screen.dart';
import 'package:legal_cover/screens/info_screen.dart';
import 'package:legal_cover/screens/terms_screen.dart';

import 'package:provider/provider.dart';
import 'package:legal_cover/model/user_data_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserDataHandler(),
      child: MaterialApp(
        initialRoute: LoginScreen.id,
        routes: {
          Navigation.id: (context) => Navigation(),
          LoginScreen.id: (context) => LoginScreen(),
          InfoScreen.id: (context) => InfoScreen(),
          TermsScreen.id: (context) => TermsScreen(),
        },
      ),
    );
  }
}
