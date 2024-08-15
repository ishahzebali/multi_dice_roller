import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  State<StatefulWidget> createState() {
    return _FirstPageState();
  }
}

class _FirstPageState extends State<FirstPage> {
  void switchScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.only(top: 80),),
          const Text(
            'Welcome to Multi Dice Roller',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 38, 36, 35)),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: widget.startQuiz,
            child: const Text('Get Started'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 550),
          ),
          const Text(
            'Made With ❤️ From Pakistan',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
