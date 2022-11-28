part of '../../login_page.dart';

class _RegisterNowButton extends StatelessWidget {
  const _RegisterNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'not'.tr,
            style: AppTextStyle.wBolds.copyWith(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.colorFFFFFF
                  : AppColors.color000000,
            ),
          ),
          WidgetSpan(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/registerPage');
              },
              borderRadius: BorderRadius.circular(5),
              child: Text(
                'register'.tr,
                style:
                    AppTextStyle.wBolds.copyWith(color: AppColors.color5aa2e7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
