import 'package:flutter/foundation.dart';
import 'package:legal_cover/model/user_data.dart';

class UserDataHandler extends ChangeNotifier {
  final userData = UserData(
      name: 'John',
      surname: 'Doe',
      idNum: '0987654321098',
      contactNum: '0845678569',
      email: 'email@gmail.com');

  void updateName(String userDetails) {
    userData.name = userDetails;
    notifyListeners();
  }

  void updateSurname(String userDetails) {
    userData.surname = userDetails;
    notifyListeners();
  }

  void updateIdNum(String userDetails) {
    userData.idNum = userDetails;
    notifyListeners();
  }

  void updateContactNum(String userDetails) {
    userData.contactNum = userDetails;
    notifyListeners();
  }

  void updateEmail(String userDetails) {
    userData.email = userDetails;
    notifyListeners();
  }
}
