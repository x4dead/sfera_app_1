import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_app_1/features/presentation/pages/settings_page/settings_page.dart';
import 'package:sfera_app_1/features/presentation/resources/locale_string.dart';
import 'package:sfera_app_1/service_locator.dart' as di;
import 'package:sfera_app_1/service_locator.dart';
import 'features/presentation/bloc/theme_cubit.dart';
import 'features/presentation/pages/home_page/home_page.dart';
import 'features/presentation/pages/login_page/login_page.dart';
import 'features/presentation/pages/register_page/register_page.dart';
import 'features/presentation/services/firebase_stream.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await di.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.windows,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<ThemeCubit>(),
      child: BlocBuilder<ThemeCubit, ThemeStates>(builder: (context, state) {
        return GetMaterialApp(
          translations: LocaleString(),
          locale: const Locale('en', 'US'),
          theme: state.theme,
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => const FirebaseStream(),
            '/homePage': (context) => const HomePage(),
            '/loginPage': (context) => const LoginPage(),
            '/settingsPage': (context) => const SettingsPage(),
            '/registerPage': (context) => const RegisterPage(),
          },
        );
      }),
    );
  }
}
