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
  @override
  void initState() {
    super.initState();
  }

  String language = '';
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
                    splashRadius: 25,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                ),
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 300,
                    child: Column(
                      children: [
                        RadioListTile(
                          key: ValueKey('en'),
                          title: const Text("English"),
                          value: "en",
                          groupValue: language,
                          onChanged: (value) {
                            var locale = const Locale('en', 'US');
                            Get.updateLocale(locale);
                            setState(() {
                              language = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          key: ValueKey('ru'),
                          title: const Text("Russian"),
                          value: "ru",
                          groupValue: language,
                          onChanged: (value) {
                            var locale = const Locale('ru', 'RU');
                            Get.updateLocale(locale);
                            setState(() {
                              language = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          key: ValueKey('bel'),
                          title: const Text("Belarusian"),
                          value: "bel",
                          groupValue: language,
                          onChanged: (value) {
                            var locale = const Locale('by', 'BY');
                            Get.updateLocale(locale);
                            setState(() {
                              language = value.toString();
                            });
                          },
                        ),
                      ],
                    ),
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
                  onPressed: () {},
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
