import 'package:flutter/material.dart';
import '../../../../service_locator.dart';
import '../../bloc/theme_cubit.dart';
import 'package:get/get.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String language = "English";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    sl<ThemeCubit>().changeTheme();
                    // setState(() {});
                  },
                  child: const Text('Change theme'),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    var locale = const Locale('en', 'US');
                    Get.updateLocale(locale);
                  },
                  child: const Text('English'),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    var locale = const Locale('ru', 'RU');
                    Get.updateLocale(locale);
                  },
                  child: const Text('Russian'),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    var locale = const Locale('by', 'BY');
                    Get.updateLocale(locale);
                  },
                  child: const Text('Belarusian'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
