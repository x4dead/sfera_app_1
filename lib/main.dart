// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sfera_app_1/service_locator.dart' as di;
// import 'package:sfera_app_1/service_locator.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'features/presentation/pages/home_page/home_page.dart';
import 'features/presentation/pages/login_page/login_page.dart';

// part 'main_page.dart';

Future<void> main() async {
  await di.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
