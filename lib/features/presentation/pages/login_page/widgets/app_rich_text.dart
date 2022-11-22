part of '../login_page.dart';

class AppRichText extends StatelessWidget {
  const AppRichText({
    Key? key,
    required this.firstLabel,
    required this.secondLabel,
    required this.onTap,
  }) : super(key: key);

  final String firstLabel;
  final String secondLabel;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(firstLabel, style: AppTextStyle.wBolds),
        InkWell(
          onTap: onTap,
          child: Text(
            secondLabel,
            style: AppTextStyle.wBolds.copyWith(color: AppColors.color5aa2e7),
          ),
        ),
      ],
    );
  }
}
