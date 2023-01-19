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
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/registerPage');
              },
              child: Text(
                'register'.tr,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.color5aa2e7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
