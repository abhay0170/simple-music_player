import 'package:flutter/material.dart';
import 'package:simple_music_player/screens/home_page.dart';
import 'package:simple_music_player/theme/dark_theme.dart';
import 'package:simple_music_player/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // themeMode: ThemeMode.system,
      // darkTheme: darkMode,
      theme: lightMode,
      home: HomePage(),
    );
  }
}
