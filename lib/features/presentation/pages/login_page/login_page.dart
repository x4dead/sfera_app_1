// ignore_for_file: depend_on_referenced_packages
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:desktop_webview_auth/desktop_webview_auth.dart';
import 'package:desktop_webview_auth/google.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sfera_app_1/features/presentation/bloc/theme_cubit.dart';
import 'package:sfera_app_1/features/presentation/resources/app_constants.dart';
import 'package:sfera_app_1/features/presentation/resources/custom_icons.dart';
import 'package:sfera_app_1/features/presentation/resources/images.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_button/app_button.dart';
import 'package:sfera_app_1/features/presentation/widgets/app_text_field/field_from_class.dart';
import 'package:sfera_app_1/themes/colors/colors.dart';
import 'package:sfera_app_1/themes/text_style/text_style.dart';
import '../../../../service_locator.dart';
import '../../bloc/sfera_bloc.dart';
import '../../widgets/app_text_field/app_text_field.dart';

part 'widgets/buttons/google_button.dart';
part 'widgets/buttons/gradient_button.dart';
part 'widgets/buttons/register_now_button.dart';
part 'widgets/main_layout_widget.dart';
part 'widgets/auth_error_dialog.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _bloc = sl<SferaBloc>();
  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  ProviderArgs get args => GoogleSignInArgs(
        redirectUri: AppConstants.redirectUri,
        clientId: AppConstants.clientId,
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: BlocProvider.value(
          value: _bloc,
          child: BlocConsumer<SferaBloc, SferaStates>(
            listener: (context, state) {
              state.mapOrNull(
                success: (value) {
                  Navigator.pushNamed(context, '/homePage');
                },
                error: (error) {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        AuthErrorWidget(message: error.message),
                  );
                },
                openloading: (_) {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
                closeloading: (value) {
                  return Navigator.of(context).pop();
                },
              );
            },
            builder: (context, state) {
              return _MainLayoutWidget(
                emailController: _emailController,
                passwordController: _passwordController,
                formKey: formKey,
                onTapGoogleButton: () {
                  _bloc.add(
                    SferaEvents.loginByGoogle(args: args),
                  );
                },
                onTapGradientButton: () {
                  final isValid = formKey.currentState!.validate();
                  _bloc.add(
                    SferaEvents.loginByEmail(
                      email: _emailController.text.trim(),
                      password: _passwordController.text.trim(),
                      isValid: isValid,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
