import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../service_locator.dart';
import '../pages/home_page/home_page.dart';
import '../pages/login_page/login_page.dart';

class FirebaseStream extends StatelessWidget {
  const FirebaseStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: sl<FirebaseAuth>().authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const HomePage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
