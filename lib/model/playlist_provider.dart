import 'package:flutter/material.dart';
import 'package:simple_music_player/model/song.dart';

class PlaylistProvider extends ChangeNotifier {
  // playlist of song
  final List<Song> _playlist = [
    // Song 1
    Song(
      songName: "Every Day",
      artistName: "Vishnu Vijay",
      albumArtImagePath:
          "assets/images/Cover of Everyday - From _Alappuzha Gymkhana_ by Vishnu Vijay, Sanjith Hegde, Suhail Koya.jpg",
      audioPath:
          "assets/audio/Vishnu_Vijay,_Sanjith_Hegde,_Suhail_Koya_Everyday_From_Alap.mp3",
    ),
    // Song 2
    Song(
      songName: "Azrael",
      artistName: "Deepak Dev",
      albumArtImagePath:
          "assets/images/Cover of Azrael (From _L2_ Empuraan_) by Deepak Dev, Usha Uthup, Murali Gopy.jpg",
      audioPath:
          "assets/audio/Deepak_Dev,_Usha_Uthup,_Murali_Gopy_Azrael_From_L2_Empuraan.mp3",
    ),
    // Song 3
    Song(
      songName: "Every Day",
      artistName: "Vishnu Vijay",
      albumArtImagePath:
          "assets/images/Cover of Everyday - From _Alappuzha Gymkhana_ by Vishnu Vijay, Sanjith Hegde, Suhail Koya.jpg",
      audioPath:
          "assets/audio/Vishnu_Vijay,_Sanjith_Hegde,_Suhail_Koya_Everyday_From_Alap.mp3",
    ),
  ];

  // current song  playing index
  int? _currentSongIndex;

  /*

  GETTERS

  */

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  /*

  SETTERS
  
  */

  set currentSongIndex(int? newIndex) {
    // update current song index
    _currentSongIndex = newIndex;

    // update the UI
    notifyListeners();
  }
}
