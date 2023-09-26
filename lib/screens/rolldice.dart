import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  @override
  int ActiveDiceFace = 6;
  List<String> diceImage = [
    'https://upload.wikimedia.org/wikipedia/commons/a/a9/Terning1.png',
    'https://upload.wikimedia.org/wikipedia/commons/c/c9/Terning2.png',
    'https://upload.wikimedia.org/wikipedia/commons/c/ca/Terning3.png',
    'https://upload.wikimedia.org/wikipedia/commons/2/2c/Terning4.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/5/5e/Terning5.png',
    'https://upload.wikimedia.org/wikipedia/commons/d/df/Terning6.png',
    'https://th.bing.com/th/id/R.e9049ddb86d5f15b2ca705613121fdaa?rik=Pue4Sszw5%2bbvQg&riu=http%3a%2f%2fbestanimations.com%2fGames%2fDice%2frolling-dice-gif-3.gif&ehk=C1A7Ydk7jxF4n1B0jLaLASwbSvNL%2b%2fKydskh4qlbVTg%3d&risl=&pid=ImgRaw&r=0'
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.red,
            Colors.blueAccent,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Roll Dice'),
              const SizedBox(
                height: 40,
              ),
              if(ActiveDiceFace>3)
              Text('Congrats! You got ${ActiveDiceFace + 1}',
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 20,
              ),
              ),
              Image.network(diceImage[ActiveDiceFace]),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  var ranNum = Random().nextInt(6);
                  setState(() {
                    ActiveDiceFace = ranNum;
                  });
                  print('Button Pressed');
                },
                child: const Text(
                  'Roll!',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
