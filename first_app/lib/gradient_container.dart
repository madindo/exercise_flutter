import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  //const GradientContainer({super.key, required this.colors});
  //final List<Color> colors;

  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  const GradientContainer.purple({super.key}) : color1 = Colors.deepPurple, color2 = Colors.purple;

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}
