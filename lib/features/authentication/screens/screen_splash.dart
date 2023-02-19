import 'package:ariareads/constants/constant_images.dart';
import 'package:ariareads/constants/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(DAL_splashScreenMJ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Center(
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
}
