import 'package:ariareads/constants/constant_images.dart';
import 'package:ariareads/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/constant_theme.dart';

class ScreenOnboarding extends StatelessWidget {
  const ScreenOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              Container(
                color: dalColorOnboardingPage1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage(dalScreenOnboardingSmall),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(dalDefaultPaddingSize),
                          child: Text(
                            dalAppName,
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ),
                        Text(
                          dalOnboardingPage01Subtext,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Hola",
                            style: displayMediumTextStyleLight,
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
    );
  }
}
