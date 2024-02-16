import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          const _DrawerHeader(),

          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text('Home'),
            onTap: (){Navigator.pushReplacementNamed(context, HomeScreen.routeName);},
          ),

          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('People'),
            onTap: (){},
          ),

          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Setting'),
            onTap: (){
              Navigator.pushReplacementNamed(context, SettingScreen.routeName);},
          )

        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover
          )
      ),
      child: Container(),
    );
  }
}