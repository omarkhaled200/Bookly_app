
import 'package:flutter/material.dart';

class sliding_Animation extends StatelessWidget {
  const sliding_Animation({
    super.key,
    required this.slidinganimation,
  });

  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidinganimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidinganimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
