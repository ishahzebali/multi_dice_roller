import 'package:flutter/material.dart';
import 'package:multi_dice_roller/screen_handler.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ScreenHandler(),
      ),
    ),
  );
}
