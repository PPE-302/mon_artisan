import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import '../../screems/home_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            providerConfigs: const [PhoneProviderConfiguration(
            )],
            headerMaxExtent: 300,
            headerBuilder: (context, constraints, _) {
              // ignore: prefer_const_literals_to_create_immutables
              return const Image(
                image: AssetImage('assets/images/3911045.png'),
              );
            },
            footerBuilder: (context, action) {
              return const SizedBox(
                child: Text(
                  'By signing in, you agree to our terms and conditions.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              );
            },
          );
        }
        return const HomePage();
      },
    );
  }
}
