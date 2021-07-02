import 'package:flutter/material.dart';
import 'package:legal_cover/navigation.dart';
import 'package:legal_cover/screens/login_screen.dart';

import 'package:provider/provider.dart';
import 'package:legal_cover/model/user_data_handler.dart';

class LoadingScreenLogin extends StatelessWidget {
  static const String id = 'loading_screen_login';

  @override
  Widget build(BuildContext context) {
    return Consumer<UserDataHandler>(
        builder: (context, userDataHandler, child) {
      return LoginHandler(
        loginStatus: userDataHandler.getLoginStatus(),
        child: Scaffold(),
      );
    });
  }
}

class LoginHandler extends StatefulWidget {
  LoginHandler({@required this.loginStatus, @required this.child});

  final bool loginStatus;
  final Widget child;

  @override
  _LoginHandlerState createState() => _LoginHandlerState();
}

class _LoginHandlerState extends State<LoginHandler> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => loginCheck(context));
  }

  void loginCheck(context) {
    try {
      widget.loginStatus
          ? Navigator.pushReplacementNamed(context, Navigation.id)
          : Navigator.pushReplacementNamed(context, LoginScreen.id);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
