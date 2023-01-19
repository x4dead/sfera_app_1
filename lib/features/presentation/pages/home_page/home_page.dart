import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_app_1/features/presentation/bloc/sfera_bloc.dart';
import 'package:sfera_app_1/features/presentation/pages/login_page/login_page.dart';
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
  final _bloc = sl<SferaBloc>();
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: _bloc,
        child: BlocConsumer<SferaBloc, SferaStates>(listener: (context, state) {
          state.mapOrNull(
            // initial: (value) {
            //   return showDialog(
            //     context: context,
            //     builder: (context) => DialogWidget(
            //       title: 'Поздравляю вы вошли в свой ',
            //       actionTitle: 'OK',
            //       actionOnTap: () {
            //         Navigator.pop(context);
            //       },
            //     ),
            //   );
            // },
            error: (message) {
              return showDialog(
                context: context,
                builder: (context) => AuthErrorWidget(message: message.message),
              );
            },
            openloading: (value) {
              return showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) =>
                    const Center(child: CircularProgressIndicator()),
              );
            },
            closeloading: (value) {
              return Navigator.pop(context);
            },
          );
        }, builder: (context, state) {
          return SingleChildScrollView(
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
                            style: Theme.of(context).textTheme.headline6),
                        const SizedBox(height: 20),
                        AppTextField(
                          icon: Icons.person,
                          maxLength: 16,
                          inputFormatters: FieldFormClass.regExpName,
                          controller: nameController,
                          text: 'Name',
                          validator: (name) =>
                              FieldFormClass.validatorName(name),
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
                                      _bloc.add(SferaEvents.updateName(
                                          name: nameController.text));
                                      nameController.clear();
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
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}
