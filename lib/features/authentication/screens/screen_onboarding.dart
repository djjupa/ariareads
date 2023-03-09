import 'package:ariareads/constants/constant_theme.dart';
import 'package:ariareads/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/constant_images.dart';

class ScreenOnboarding extends StatelessWidget {
  const ScreenOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            LiquidSwipe(
              pages: [
                Container(
                  //color: dalColorOnboardingPage1,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(dalScreenSignup),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            30, 20, 30, 10),
                        child: Text(
                          dalOnboardingPage01Subtext,
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10, 20, 10, 40),
                        child: ElevatedButton(
                          onPressed: () {
                            print("Button pressed...");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: dalColorPrimaryLight,
                            textStyle: const TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF9F4A41),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Sign in",
                            //style: displayMediumTextStyleLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(color: dalColorOnboardingPage2),
                Container(color: dalColorOnboardingPage3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            LiquidSwipe(
              pages: [
                Container(
                  //color: dalColorOnboardingPage1,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(dalScreenSignup),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /*const Image(
                        image: AssetImage(dalScreenOnboardingSmall),
                      ),*/
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.all(dalDefaultPaddingSize),
                            child: Text(
                              dalAppName,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(
                                dalDefaultPaddingSize + 50),
                            child: Text(
                              dalOnboardingPage01Subtext,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              textAlign: TextAlign.center,
                              "Sign in",
                              //style: displayMediumTextStyleLight,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(color: dalColorOnboardingPage2),
                Container(color: dalColorOnboardingPage3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 */
