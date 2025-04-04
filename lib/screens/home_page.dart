import 'package:flutter/material.dart';
import 'package:simple_music_player/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(backgroundColor: Colors.lightBlue),
      drawer: MyDrawer(),
    );
  }
}
