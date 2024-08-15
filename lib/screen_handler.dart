import 'package:flutter/material.dart';
import 'package:multi_dice_roller/dice_rollor.dart';
import 'package:multi_dice_roller/first_page.dart';

class ScreenHandler extends StatefulWidget{
  const ScreenHandler({super.key});

  

  @override
  State<StatefulWidget> createState() {
    return _ScreenHandlerState();
  }
}

class _ScreenHandlerState extends State<ScreenHandler>{

  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = FirstPage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const DiceRollor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.amberAccent, Colors.black87,],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: activeScreen,
      );
  }
}