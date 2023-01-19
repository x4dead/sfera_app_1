import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_button/app_button.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_text_field/app_text_field.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_text_field/field_from_class.dart';
import 'package:sfera_app_1/themes/colors/colors.dart';
import 'package:sfera_app_1/themes/text_style/text_style.dart';
import '../../../../service_locator.dart';
import '../../widgets/app_dialog/dialog_widget.dart';

part 'widgets/app_button/logout_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = sl<FirebaseAuth>().currentUser;

  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const LogoutButton(),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    Text(
                      'Поздравляю вы вошли в свой аккаунт ваш ник: ${user?.displayName}',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.wBolds20
                          .copyWith(color: AppColors.color000000),
                    ),
                    const SizedBox(height: 20),
                    AppTextField(
                      icon: Icons.person,
                      maxLength: 16,
                      inputFormatters: FieldFormClass.regExpName,
                      controller: nameController,
                      text: 'Name',
                      validator: (name) => FieldFormClass.validatorName(name),
                    ),
                    const SizedBox(height: 20),
                    AppButton(
                      primary: AppColors.color06325f,
                      child: const Text(
                        'Change name',
                        style: AppTextStyle.wBolds20,
                      ),
                      onPressed: () async {
                        final isValid = formKey.currentState!.validate();
                        if (isValid) {
                          await showDialog(
                            context: context,
                            builder: (context) {
                              return DialogWidget(
                                title: 'Are you sure?',
                                actionTitle: 'Yes',
                                actionOnTap: () async {
                                  Navigator.pop(context);
                                  await user?.updateDisplayName(
                                    nameController.text,
                                  );
                                  nameController.clear();
                                  setState(() {});
                                },
                              );
                            },
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}
