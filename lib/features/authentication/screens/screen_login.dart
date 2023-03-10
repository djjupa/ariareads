import 'package:ariareads/constants/constant_images.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ScreenSignIn extends StatefulWidget {
  const ScreenSignIn({super.key});

  @override
  _ScreenSignInState createState() => _ScreenSignInState();
}

class _ScreenSignInState extends State<ScreenSignIn> {
  final _auth = FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn();

  String? _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* // Get rid of the App bar on this screen
      appBar: AppBar(
        title: const Text(DAL_appName),
        leading: const Icon(Icons.book_online_outlined),
      ),*/
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(dalScreenSplashMJ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                onChanged: (value) {
                  _email = value;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                onChanged: (value) {
                  _password = value;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Sign In'),
                onPressed: () async {
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: _email!, password: _password!);
                    if (user != null) {
                      // TODO: Navigate to the feed screen
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text('Or'),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Sign In with Google'),
                onPressed: () async {
                  try {
                    final googleUser = await _googleSignIn.signIn();
                    if (googleUser != null) {
                      final googleAuth = await googleUser.authentication;
                      final credential = GoogleAuthProvider.credential(
                        accessToken: googleAuth.accessToken,
                        idToken: googleAuth.idToken,
                      );
                      await _auth.signInWithCredential(credential);
                      // Navigate to the feed screen
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Email'),
              onChanged: (value) {
                _email = value;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
              onChanged: (value) {
                _password = value;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Sign In'),
              onPressed: () async {
                try {
                  final user = await _auth.signInWithEmailAndPassword(
                      email: _email!, password: _password!);
                  if (user != null) {
                    // TODO: Navigate to the feed screen
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
            const SizedBox(height: 20),
            const Text('Or'),
            const SizedBox(height: 20),
            ElevatedButton(
              child:const Text('Sign In with Google'),
              onPressed: () async {
                try {
                  final googleUser = await _googleSignIn.signIn();
                  if (googleUser != null) {
                    final googleAuth = await googleUser.authentication;
                    final credential = GoogleAuthProvider.credential(
                      accessToken: googleAuth.accessToken,
                      idToken: googleAuth.idToken,
                    );
                    await _auth.signInWithCredential(credential);
                    // Navigate to the feed screen
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}



   */

/*
class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(dalDefaultPaddingSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(dalWelcomeScreenImage), height: size.height * 0.2,
              ),
              Text("Login", style: Theme.of(context).textTheme.displayLarge),
              Text("Subtitle", style: Theme.of(context).textTheme.displayLarge),
            ],
          ),
      ),
      ),
      ),
    );
  }
}
*/
