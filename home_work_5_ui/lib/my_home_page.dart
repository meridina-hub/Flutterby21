import 'dart:math';

import 'package:flutter/material.dart';
import 'package:home_work_5_ui/widgets/custom_buttom.dart';
import 'package:home_work_5_ui/widgets/image_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int leftDiceNumber = 2;
  int rightDiceNumber = 3;

  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE93B),
      appBar: AppBar(
        title: Text('Тапшырма 5'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: ImageWidget(
                    image: 'assets/dice-$leftDiceNumber-svgrepo-com.svg',
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: ImageWidget(
                    image: 'assets/dice-$rightDiceNumber-svgrepo-com.svg',
                  ),
                ),
              ],
            ),
            CustomButton(
              onPressed: rollDice,
            )
          ],
        ),
      ),
    );
  }
}
