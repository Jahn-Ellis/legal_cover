import 'package:flutter/foundation.dart';
import 'package:legal_cover/model/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDataHandler extends ChangeNotifier {
  final userData = UserData();

  // Save to Shared Pref
  void saveName(String userDetails) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", userDetails);
  }

  // Notify Listeners
  void updateName(String userDetails) {
    userData.name = userDetails;
    saveName(userDetails);
    notifyListeners();
  }

  // Save to Shared Pref
  void saveSurname(String userDetails) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("surname", userDetails);
  }

  // Notify Listeners
  void updateSurname(String userDetails) {
    userData.surname = userDetails;
    saveSurname(userDetails);
    notifyListeners();
  }

  // Save to Shared Pref
  void saveIdNum(String userDetails) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("idNum", userDetails);
  }

  // Notify Listeners
  void updateIdNum(String userDetails) {
    userData.idNum = userDetails;
    saveIdNum(userDetails);
    notifyListeners();
  }

  // Save to Shared Pref
  void saveDob(String userDetails) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("dob", userDetails);
  }

  // Notify Listeners
  void updateDob(String userDetails) {
    userData.dob = userDetails;
    saveDob(userDetails);
    notifyListeners();
  }

  // Save to Shared Pref
  void saveContactNum(String userDetails) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("contactNum", userDetails);
  }

  // Notify Listeners
  void updateContactNum(String userDetails) {
    userData.contactNum = userDetails;
    saveContactNum(userDetails);
    notifyListeners();
  }

  // Save to Shared Pref
  void saveEmail(String userDetails) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("email", userDetails);
  }

  // Notify Listeners
  void updateEmail(String userDetails) {
    userData.email = userDetails;
    saveEmail(userDetails);
    notifyListeners();
  }

  // Save to Shared Pref
  void saveLoginStatus(bool loginStatus) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("loginStatus", loginStatus);
  }

  // Notify Listeners
  void updateLogin(bool loginStatus) {
    userData.loginStatus = loginStatus;
    saveLoginStatus(loginStatus);
    notifyListeners();
  }

  getLoginStatus() {
    return userData.loginStatus;
  }

  // Save to Shared Pref
  void saveTermsAccepted(bool termsStatus) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("termsAccepted", termsStatus);
  }

  // Notify Listeners
  void updateTerms(bool termsStatus) {
    userData.termsAccepted = termsStatus;
    saveTermsAccepted(termsStatus);
    notifyListeners();
  }

  void updateLocation(String lastKnownLocation) {
    userData.lastKnownLocation = lastKnownLocation;
    notifyListeners();
  }
}
