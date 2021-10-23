import 'package:flutter/material.dart';
import 'package:flutter_moco/ui/splash/controller/splash_controller.dart';
import 'package:flutter_moco/ui/splash/view/welcome_sreen.dart';
import 'package:flutter_moco/values/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(_buildApp());
}

Widget _buildApp() => LayoutBuilder(builder: (context, constraints) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeSrceen(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: mPrimaryColor,
        ),
        initialBinding: _Binding(),
      );
    });

class _Binding extends Bindings {
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController(), fenix: true);
  }
}

