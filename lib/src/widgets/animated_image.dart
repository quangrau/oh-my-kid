import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset.zero,
    end: _getRandomEndOffset,
  ).animate(
    CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
  );

  Offset get _getRandomEndOffset {
    return Offset(0, Random().nextDouble() * 0.05);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
