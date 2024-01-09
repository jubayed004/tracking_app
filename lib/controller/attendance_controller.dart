import 'package:get/get.dart';
import 'package:geocoding/geocoding.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:location/location.dart' as loc;
import 'package:permission_handler/permission_handler.dart';

class AttendanceController extends GetxController{
  loc.LocationData? locationData;
  bool addressLoading = false;
  List<Placemark>? placeMark;

  @override
  void onInit() {
    super.onInit();
    checkPermission();
  }

  Future<void> checkPermission() async {
    try{
      bool result = await InternetConnectionChecker().hasConnection;
      if(await Permission.location.isGranted){
        if(result){
          getLocation();
        }else{
          Get.snackbar("Internet", "Internet Error");
        }
      }else{
        await Permission.location.request();
      }
    }catch(error){
      Get.snackbar("Permission", "Permission Error");
    }
  }

  Future getLocation() async{
    try{
      addressLoading = true;
      update();
      locationData = await loc.Location.instance.getLocation();
      getLocationAddress(locationData: locationData);
    }catch(error){
      addressLoading = false;
      update();
      Get.snackbar("Error", error.toString());
    }
  }

  Future getLocationAddress({required loc.LocationData? locationData}) async{
    try{
      if(locationData != null){
        try{
          placeMark = await placemarkFromCoordinates(locationData.latitude!, locationData.longitude!);
          update();
          addressLoading = false;
          print("subLocality ${placeMark?[0].subLocality}");
          print("Locality ${placeMark?[0].locality}");
          print("subAdministrativeArea ${placeMark?[0].subAdministrativeArea}");
          print("administrativeArea ${placeMark?[0].administrativeArea}");
          print("subThoroughfare ${placeMark?[0].subThoroughfare}");
          print("thoroughfare ${placeMark?[0].thoroughfare}");
          print("name ${placeMark?[0].name}");
          print("postalCode ${placeMark?[0].postalCode}");
          print("isoCountryCode ${placeMark?[0].isoCountryCode}");
          print("isoCountryCode ${placeMark?[0].street}");
          update();
        }catch(error){
          addressLoading = false;
          update();
          Get.snackbar("Error", error.toString());
        }
      }else{
        addressLoading = false;
        update();
        Get.snackbar("Error", "Address Get Error");
      }
      addressLoading = false;
      update();
    }catch(error){
      addressLoading = false;
      update();
      Get.snackbar("Error", error.toString());
    }
  }
}