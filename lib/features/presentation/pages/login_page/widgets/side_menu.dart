part of '../login_page.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 33, 32, 37),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'Sfera',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.wBolds20.copyWith(fontSize: 46),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/homePage');
              },
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
