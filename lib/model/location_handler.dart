import 'package:geolocator/geolocator.dart';

class LocationHandler {
  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
  }
}
// URL format to be added to SMS as link for general location
// https://www.google.com/maps/@37.785834,-122.406417,15z
