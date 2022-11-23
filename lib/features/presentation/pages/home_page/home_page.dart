import 'package:flutter/material.dart';
import 'package:sfera_app_1/themes/text_style/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Поздравляю вы вошли в свой аккаунт',
          style: AppTextStyle.wBolds20,
        ),
      ),
    );
  }
}
