import 'package:ariareads/constants/constant_images.dart';
import 'package:ariareads/features/authentication/controllers/controller_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  //bool animate = false;

  final controllerSplashScreen = Get.put(ControllerSplashScreen());

  @override
  Widget build(BuildContext context) {
    // call the controller and start the animation and the Navigation to the SignIn Screen
    //controllerSplashScreen.startAnimation();

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Obx(
            () => AnimatedContainer(
              width: controllerSplashScreen.animate.value ? 100 : 0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(dalScreenSplashMJ),
                  fit: BoxFit.cover,
                ),
              ),
              duration: const Duration(microseconds: 500),
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ],
      ),
    );
  }

/*
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          /*Obx(
            () => AnimatedPositioned(
              duration: const Duration(microseconds: 500),
              top: controllerSplashScreen.animate.value ? 100 : 0,
              left: controllerSplashScreen.animate.value ? 100 : 0,
              child: */
          Container(
            //width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(DAL_splashScreenMJ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //),
          //),
        ],
      ),
    );
  }
  */

  /*child: AnimatedOpacity(
                duration: const Duration(microseconds: 500),
                opacity: 1,

               */
  /*
              child: Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(DAL_splashScreenMJ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            //),
          ),
        ],
      ),
    );
  }

  */

  /*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              //top: animate ? 0 : -50,
              //left: animate ? 0 : -50,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(DAL_splashScreenMJ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    DAL_appName,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  */
}
