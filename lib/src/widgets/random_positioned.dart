import 'dart:math';

import 'package:flutter/material.dart';

class RandomPositioned extends StatelessWidget {
  const RandomPositioned({
    Key? key,
    this.index = 0,
    required this.child,
  }) : super(key: key);

  final int index;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _getRandomTop(index),
      left: _getRandomLeft(index),
      child: child,
    );
  }

  double _getRandomTop(index) {
    var delta = Random().nextDouble() * 15;
    return delta;
  }

  double _getRandomLeft(index) {
    var delta = Random().nextDouble() * 15;
    return delta;
  }
}
