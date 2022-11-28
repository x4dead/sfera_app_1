// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sfera_app_1/locale_string.dart';
import 'package:sfera_app_1/service_locator.dart' as di;
// import 'package:sfera_app_1/service_locator.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'features/presentation/pages/home_page/home_page.dart';
import 'features/presentation/pages/home_page/home_page.dart';
import 'features/presentation/pages/login_page/login_page.dart';
import 'features/presentation/services/firebase_stream.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

// part 'main_page.dart';2

Future<void> main() async {
  await di.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.windows,
  );
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user != null) {
      print(user.uid);
    }
  });
  FirebaseAuth.instance.idTokenChanges().listen((User? user) {
    if (user != null) {
      print(user.uid);
    }
  });
  FirebaseAuth.instance.userChanges().listen((User? user) {
    if (user != null) {
      print(user.uid);
    }
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocaleString(),
      locale: Locale('en', 'US '),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const FirebaseStream(),
        '/homePage': (context) => const HomePage(),
        '/loginPage': (context) => const LoginPage(),
      },
    );
  }
}
