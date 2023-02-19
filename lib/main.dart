import 'package:ariareads/features/authentication/screens/screen_splash.dart';
import 'package:ariareads/features/screens/home_screen.dart';
import 'package:ariareads/utils/themes/theme.dart';
import 'package:ariareads/widgets/rounded_button.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aria Reads',
      theme: DAL_AppTheme.lightTheme,
      /*scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kBlackColor,


         */
      darkTheme: DAL_AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
      //home: const SignInScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ariareads"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Bitmap.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.displayMedium,
                  children: const [
                    TextSpan(
                      text: "aria",
                    ),
                    TextSpan(
                      text: "reads",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: RoundedButton(
                  text: "login",
                  fontSize: 20,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const HomeScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
