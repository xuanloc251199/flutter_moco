import 'package:flutter/material.dart';
import 'package:flutter_moco/ui/splash/controller/splash_controller.dart';
import 'package:flutter_moco/values/colors.dart';
import 'package:flutter_moco/values/images.dart';
import 'package:get/get.dart';

class WelcomeSrceen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWelcome(),
    );
  }
}

class BodyWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mPrimaryColor,
      child: GetBuilder<SplashController>(
        builder: (value) => Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Image.asset(
                logo_app_white,
                width: Get.width,
                height: Get.height,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
