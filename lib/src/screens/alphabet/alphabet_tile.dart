import 'package:flutter/material.dart';
// import 'package:oh_my_kids/src/api/sound_player.dart';
import 'package:oh_my_kids/src/utils/constant.dart';
import 'package:oh_my_kids/src/widgets/animated_image.dart';
import 'package:oh_my_kids/src/widgets/random_positioned.dart';

class AlphabetTile extends StatelessWidget {
  const AlphabetTile({
    Key? key,
    required this.letter,
    this.color = kMakoColor,
    this.index = 0,
  }) : super(key: key);

  final String letter;
  final Color? color;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: _buildAlphabet(),
      onTap: () async {},
    );
  }

  Stack _buildAlphabet() {
    return Stack(
      alignment: Alignment.center,
      children: [
        RandomPositioned(
          child: AnimatedImage(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  letter,
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'AppoPaint',
                    color: color,
                  ),
                ),
                Image.asset(
                  'assets/images/bubble.png',
                  width: 80,
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
