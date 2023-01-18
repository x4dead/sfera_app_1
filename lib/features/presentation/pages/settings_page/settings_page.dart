import 'package:flutter/material.dart';
// import 'package:flutter_custom_switch/flutter_custom_switch.dart';ч
import 'package:sfera_app_1/features/presentation/resources/app_constants.dart';
import 'package:sfera_app_1/features/presentation/resources/images.dart';
import 'package:sfera_app_1/themes/colors/colors.dart';
import 'package:sfera_app_1/themes/text_style/text_style.dart';
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

  String language = AppConstants.en.languageCode;
  bool isDark = false;
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
                const SizedBox(height: 35),
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
                            var locale = AppConstants.en;
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
                            var locale = AppConstants.ru;
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
                            var locale = AppConstants.by;
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
                const SizedBox(height: 20),
                Row(
                  children: [
                    Switch.adaptive(
                      value: isDark,
                      activeTrackColor: AppColors.color06325f,
                      activeColor: AppColors.color06325f.withOpacity(0.8),
                      splashRadius: 20,
                      activeThumbImage: const NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/230/230994.png',
                      ),
                      inactiveThumbColor: AppColors.color5aa2e7,
                      inactiveTrackColor: AppColors.color427BB1,
                      inactiveThumbImage: const NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/552/552448.png',
                          scale: 5),
                      // inactiveThumbImage: Icon(Icons.),
                      onChanged: (value) {
                        if (value = false) {
                          isDark = !isDark;
                          value = true;
                          sl<ThemeCubit>().changeTheme();
                        } else {
                          isDark = !isDark;
                          value = false;
                          sl<ThemeCubit>().changeTheme();
                          setState(() {});
                        }
                      },
                    ),
                    // FlutterCustomSwitch(
                    //   isSmallToggle: true,
                    //   value: isDark,
                    //   onChanged: (value) {
                    //     if (value = false) {
                    //       isDark = !isDark;
                    //       value = true;
                    //       sl<ThemeCubit>().changeTheme();
                    //     } else {
                    //       isDark = !isDark;
                    //       value = false;
                    //       sl<ThemeCubit>().changeTheme();
                    //       setState(() {});
                    //     }
                    //   },
                    // ),
                    const Text(
                      'Theme mode',
                      style: AppTextStyle.wBolds,
                    ),
                  ],
                ),
                // const SizedBox(height: 15),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text('English'),
                // ),
                // const SizedBox(height: 15),
                // ElevatedButton(
                //   onPressed: () {
                //     var locale = const Locale('ru', 'RU');
                //     Get.updateLocale(locale);
                //   },
                //   child: const Text('Russian'),
                // ),
                // const SizedBox(height: 15),
                // ElevatedButton(
                //   onPressed: () {
                //     var locale = const Locale('by', 'BY');
                //     Get.updateLocale(locale);
                //   },
                //   child: const Text('Belarusian'),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
