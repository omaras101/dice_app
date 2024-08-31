import 'package:flutter/material.dart';
import 'package:first/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.deepPurple({super.key})
      : color1 = const Color.fromARGB(255, 38, 5, 96),
        color2 = const Color.fromARGB(255, 0, 19, 128);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}

// final const var