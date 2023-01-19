import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';

class FieldFormClass {
  // final String lableText;
  // final bool? obscureText;
  // final RegExp inputFormatters;
  // final int? maxLength;
  // final String? Function(String?) validator;
  // final TextEditingController controller;

  FieldFormClass(
      // {

      // required this.lableText,
      // required this.controller,
      // this.obscureText = false,
      // required this.inputFormatters,
      // this.maxLength = 16,
      // required this.validator,
      // }
      );

  static RegExp regExpPassword =
      RegExp(r'^[A-Za-z0-9!@#\$&*~]+', unicode: true);
  static RegExp regExpEmail = RegExp(r'^[a-z0-9@._-]+');
  static RegExp regExpName = RegExp(r'^[A-Za-z]+', unicode: true);

  static String? validatorName(String? name) {
    if (name!.length < 3) {
      //если длинна имени меньше 3 символов выводиим ошибку
      return 'name_3_characters'.tr;
    } else if (!name.contains(RegExp(r'[A-Z]'))) {
      //если пароль не содержит хотя бы одну заглавную буквку выводим ошибку
      return 'name_uppercase'.tr;
    } else {
      return null;
    }
  }

  static validatorEmail(String? email) {
    if (email != null && !EmailValidator.validate(email)) {
      // Валидация сделана при помощи пакета email_validator
      return 'enter'.tr;
    }
    return null;
  }

  static String? validatorPassword(String? password) {
    if (password == null || password.length < 6) {
      //если длинна пароля меньше 6 символов выводиим ошибку
      return 'password_6_characters'.tr;
    } else if (!password.contains(RegExp(r'[A-Z]'))) {
      //если пароль не содержит хотя бы одну заглавную букву выводим ошибку
      return 'password_uppercase'.tr;
    } else if (!password.contains(RegExp(r'[a-z]'))) {
      //если пароль не содержит хотя бы одну заглавную букву выводим ошибку
      return 'password_lowercase'.tr;
    } else if (!password.contains(RegExp(r'[0-9]'))) {
      return 'password_number'.tr;
    } else if (!password.contains(RegExp(r'[_!@#\$&*~]'))) {
      return 'password_symbol'.tr;
    } else {
      return null;
    }
  }

  static String? validatorOldNewPassword(
      String passwordOld, String passwordNew) {
    if (passwordNew == passwordOld) {
      return "password_is_same".tr;
    }
    return null;
  }

  static String? validatorNewPasswords(String password1, String password2) {
    if (password1 != password2) {
      return "password_match".tr;
    }
    return null;
  }
}
