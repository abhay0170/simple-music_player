import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_music_player/model/playlist_provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, ref, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,

          body: Column(
            children: [
              // appBar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // BackButton
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),

                  // title
                  Text("P L A Y L I S T"),

                  // menu button
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                ],
              ),

              // album artwork

              // song duration

              // playback control
            ],
          ),
        );
      },
    );
  }
}
