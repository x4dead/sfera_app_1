part of '../../login_page.dart';

class _GradientButton extends StatelessWidget {
  const _GradientButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          alignment: Alignment.center,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      onPressed: onTap,
      child: Ink(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            end: Alignment.topCenter,
            begin: Alignment.bottomCenter,
            colors: [
              AppColors.color031931,
              AppColors.color06325f,
            ],
          ),
        ),
        child: Center(
          child: Text(
            'sign'.tr,
            style: AppTextStyle.wBolds20,
          ),
        ),
      ),
    );
  }
}
