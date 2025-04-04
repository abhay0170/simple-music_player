import 'package:flutter/material.dart';
import 'package:simple_music_player/screens/settings.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // logo
          DrawerHeader(child: Icon(Icons.music_note)),
          // home title
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text(
              "H O M E",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // settings title
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text(
              "S E T T I N G S",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
          ),
        ],
      ),
    );
  }
}
