import 'package:firebase_auth/firebase_auth.dart';
import 'package:firedart/auth/token_store.dart';
import 'package:flutter/material.dart';
import 'package:sfera_app_1/service_locator.dart' as di;
import 'package:firebase_core/firebase_core.dart';
import 'features/presentation/pages/login_page/login_page.dart';

// part 'main_page.dart';

void main() async {
  // await di.init();
  // WidgetsFlutterBinding.ensureInitialized();
  FirebaseAuth.instance;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
