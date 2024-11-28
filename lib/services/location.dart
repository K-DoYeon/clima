import 'package:geolocator/geolocator.dart';

class Location{
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async{
    LocationPermission permission = await Geolocator.requestPermission();
    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.low,
      distanceFilter: 10,
    );
    try {
      Position position = await Geolocator.getCurrentPosition(
          locationSettings: locationSettings);
      latitude = position.latitude;
      longitude = position.longitude;
      //somethingThatExpectsLessThan10(12);
    }
    catch(e){
      print(e);
    }
  }

}