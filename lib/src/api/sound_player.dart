import 'package:flutter_sound_lite/flutter_sound.dart';

class SoundPlayer {
  late FlutterSoundPlayer? _audioPlayer;

  Future init() async {
    _audioPlayer = FlutterSoundPlayer();

    await _audioPlayer!.openAudioSession();
  }

  void dispose() {
    _audioPlayer!.closeAudioSession();
    _audioPlayer = null;
  }

  Future play(String assetPath) async {
    await _audioPlayer!.startPlayer(
      fromURI: assetPath,
    );
  }

  Future stop() async {
    await _audioPlayer!.stopPlayer();
  }
}
