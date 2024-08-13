import 'package:flutter/material.dart';
import 'package:multi_dice_roller/dice_rollor.dart';
import 'package:multi_dice_roller/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}
