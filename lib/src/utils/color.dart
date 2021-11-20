import 'dart:math';
import 'dart:ui';

import 'package:oh_my_kids/src/utils/constant.dart';

Color getColorByIndex(int index) {
  final colors = [kCarnationColor, kDanubeColor, kSaffronColor, kDeyorkColor];

  return colors[index % 4];
}

Color getRandomColor() {
  final index = Random().nextInt(4);
  final colors = [kCarnationColor, kDanubeColor, kSaffronColor, kDeyorkColor];
  return colors[index];
}
