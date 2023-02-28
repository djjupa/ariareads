import 'package:ariareads/features/authentication/screens/screen_login.dart';
import 'package:get/get.dart';

class ControllerSplashScreen extends GetxController {
  static ControllerSplashScreen get find =>
      Get.find(); //Uses GetX to advertise changes

  RxBool animate = false.obs; // This is like a bool, but using GetX

  Future startAnimation() async {
    await Future.delayed(const Duration(microseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(microseconds: 500));
    Get.to(ScreenSignIn);
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInScreen()));  // Not needed
  }
}
