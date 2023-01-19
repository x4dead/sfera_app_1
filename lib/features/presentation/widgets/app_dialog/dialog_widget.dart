import 'package:flutter/material.dart';
import '../../../../themes/colors/colors.dart';
import '../../../../themes/text_style/text_style.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget(
      {super.key,
      required this.title,
      required this.actionTitle,
      required this.actionOnTap});

  final String title;
  final String actionTitle;
  final Function() actionOnTap;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      actionsPadding:
          const EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 5),
      titlePadding: const EdgeInsets.all(20),
      title: Text(title, textAlign: TextAlign.center),
      titleTextStyle: AppTextStyle.w400s14
          .copyWith(color: AppColors.color000000, fontSize: 16),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        InkWell(
          splashColor: AppColors.colorTransparent,
          overlayColor: MaterialStateProperty.all(AppColors.colorTransparent),
          onTap: actionOnTap,
          child: Text(actionTitle, style: AppTextStyle.wBolds),
        ),
      ],
    );
  }
}
