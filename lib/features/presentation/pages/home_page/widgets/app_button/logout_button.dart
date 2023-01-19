part of '../../home_page.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Align(
        alignment: Alignment.topLeft,
        child: IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () async {
            await showDialog(
              context: context,
              builder: (context) {
                return DialogWidget(
                  title: 'Are you sure you want to exit?',
                  actionTitle: 'Exit',
                  actionOnTap: () {
                    sl<FirebaseAuth>().signOut();
                    Navigator.pushNamed(context, '/loginPage');
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
