import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sfera_app_1/themes/colors/colors.dart';
import 'package:sfera_app_1/themes/text_style/text_style.dart';

import '../../../../service_locator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = sl<FirebaseAuth>().currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              sl<FirebaseAuth>().signOut();
            },
            icon: const Icon(Icons.logout)),
      ),
      body: Center(
        child: Text(
          'Поздравляю вы вошли в свой аккаунт ${user.email}',
          style: AppTextStyle.wBolds20.copyWith(color: AppColors.color000000),
        ),
      ),
    );
  }
}
