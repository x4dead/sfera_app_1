part of '../login_page.dart';

class AuthErrorWidget extends StatelessWidget {
  const AuthErrorWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'authorisation'.tr,
        maxLines: 2,
        style: AppTextStyle.wBolds.copyWith(color: AppColors.colorF44336),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text(
              message,
              style: AppTextStyle.w400s14.copyWith(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.colorFFFFFF
                      : null),
            ),
          ],
        ),
      ),
      actions: [
        InkWell(
          child: Text(
            'try'.tr,
            style: AppTextStyle.wBolds,
          ),
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/loginPage', (route) => false);
          },
        ),
      ],
    );
  }
}
