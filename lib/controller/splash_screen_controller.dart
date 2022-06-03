import 'dart:async';
import 'package:get/get.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/landing_page.dart';

class SplashScreenController extends GetxController{

  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 5), () {
      Get.off(LandingPage());
    });
  }
}