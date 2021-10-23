import 'package:flutter_moco/ui/auth/login/view/loging_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void onInit() {
    super.onInit();
    splashAction();
  }

  void splashAction() async {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Get.offAll(LoginScreen());
      },
    );
  }
}
