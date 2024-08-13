import 'package:flutter/material.dart';
import 'dart:math';

class DiceRollor extends StatefulWidget {
  const DiceRollor({super.key});
  @override
  State<DiceRollor> createState() {
    return _DiceRollorState();
  }
}

class _DiceRollorState extends State<DiceRollor> {
  var currentDiceRoll1 = 1;
  var currentDiceRoll2 = 1;
  var currentDiceRoll3 = 1;

  void diceRoll() {
    setState(() {
      currentDiceRoll1 = Random().nextInt(6) + 1;
      currentDiceRoll2 = Random().nextInt(6) + 1;
      currentDiceRoll3 = Random().nextInt(6) + 1;
    });
  }


  void resetDice(){
    setState(() {
      currentDiceRoll1 = 1;
      currentDiceRoll2 = 1;
      currentDiceRoll3 = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Triple Dice Roller',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 200),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/dice-$currentDiceRoll1.png',
                  width: 100,
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset(
                  'assets/images/dice-$currentDiceRoll2.png',
                  width: 100,
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset(
                  'assets/images/dice-$currentDiceRoll3.png',
                  width: 100,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: diceRoll,
                  icon: const Icon(Icons.rotate_left_outlined),
                  label: const Text('Roll dice'),
                ),
                
              const Padding(padding: EdgeInsets.only(right: 30),),
            ElevatedButton.icon(
                onPressed: resetDice,
                icon: const Icon(Icons.restart_alt_outlined),
                label: const Text('reset Dice'))
              ],
            ),
          ],
        ),
    );
  }
}
