import 'package:flutter/material.dart';
import 'package:oh_my_kids/src/api/sound_player.dart';
import 'package:oh_my_kids/src/screens/alphabet/alphabet_data.dart';
import 'package:oh_my_kids/src/screens/alphabet/alphabet_tile.dart';
import 'package:oh_my_kids/src/utils/color.dart';
import 'package:oh_my_kids/src/utils/constant.dart';

//
/// Displays detailed information about a SampleItem.
class AlphabetView extends StatefulWidget {
  const AlphabetView({Key? key}) : super(key: key);

  static const routeName = '/alphabet';

  @override
  State<AlphabetView> createState() => _AlphabetViewState();
}

class _AlphabetViewState extends State<AlphabetView> {
  final player = SoundPlayer();

  @override
  void initState() {
    super.initState();

    player.init();
  }

  @override
  void dispose() {
    super.dispose();

    player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFantasyColor,
      appBar: AppBar(
        backgroundColor: kFantasyColor,
        foregroundColor: kMakoColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          color: kFantasyColor,
          child: GridView.count(crossAxisCount: 4, children: [
            ElevatedButton(
              onPressed: () async {
                await player.play('assets/audio/sound-sheep.mp3');
              },
              child: Text('Cow'),
            ),
          ]
              // children: _buildLetters(),
              // physics: const NeverScrollableScrollPhysics(),
              ),
        ),
      ),
    );
  }

  List<Widget> _buildLetters() {
    return List.generate(26, (index) {
      var letter = alphabetLetters[index];
      var color = getRandomColor();

      return AlphabetTile(
        index: index,
        letter: letter,
        color: color,
      );
    });
  }
}
