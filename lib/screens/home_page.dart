import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_music_player/components/my_drawer.dart';
import 'package:simple_music_player/model/playlist_provider.dart';
import 'package:simple_music_player/model/song.dart';
import 'package:simple_music_player/screens/song_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // get the playlist provider
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();

    // get playlist provider
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  void goToSong(int songIndex) {
    // update current song index
    playlistProvider.currentSongIndex = songIndex;

    // navigate to that songPage
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SongPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(title: Text("P L A Y L I S T"), centerTitle: true),
      drawer: MyDrawer(),
      body: Consumer<PlaylistProvider>(
        builder: (context, value, child) {
          // get the playlist
          final List<Song> playlist = value.playlist;

          // return list view UI
          return ListView.builder(
            itemCount: playlist.length,
            itemBuilder: (context, index) {
              // get individual song
              final Song song = playlist[index];
              // return list view ui
              return ListTile(
                leading: Image.asset(song.albumArtImagePath),
                title: Text(song.songName),
                subtitle: Text(song.artistName),
                onTap: () => goToSong(index),
              );
            },
          );
        },
      ),
    );
  }
}
