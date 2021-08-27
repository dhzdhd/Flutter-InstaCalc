import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:insta_calculator/widgets/custom_button.dart';

const nonIntColor = Color.fromARGB(255, 219, 219, 249);
const equalColor = Color.fromARGB(255, 81, 81, 130);
const List _buttonList = [
  [
    {'value': 'C', 'color': nonIntColor, 'func': 'clear'},
    {'value': '(', 'color': nonIntColor, 'func': 'calc'},
    {'value': ')', 'color': nonIntColor, 'func': 'calc'},
    {'value': '/', 'color': nonIntColor, 'func': 'calc'},
  ],
  [
    {'value': '7', 'color': null, 'func': 'calc'},
    {'value': '8', 'color': null, 'func': 'calc'},
    {'value': '9', 'color': null, 'func': 'calc'},
    {'value': 'x', 'color': nonIntColor, 'func': 'calc'},
  ],
  [
    {'value': '4', 'color': null, 'func': 'calc'},
    {'value': '5', 'color': null, 'func': 'calc'},
    {'value': '6', 'color': null, 'func': 'calc'},
    {'value': '-', 'color': nonIntColor, 'func': 'calc'},
  ],
  [
    {'value': '1', 'color': null, 'func': 'calc'},
    {'value': '2', 'color': null, 'func': 'calc'},
    {'value': '3', 'color': null, 'func': 'calc'},
    {'value': '+', 'color': nonIntColor, 'func': 'calc'},
  ],
  [
    {'value': '^', 'color': nonIntColor, 'func': 'calc'},
    {'value': '0', 'color': null, 'func': 'calc'},
    {'value': '.', 'color': nonIntColor, 'func': 'calc'},
    {'value': '=', 'color': equalColor, 'func': 'equate'},
  ],
];

class ButtonContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 0; i < _buttonList.length; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var item in _buttonList[i])
                  CustomButton(
                    text: item['value'],
                    color: item['color'],
                    onPressed: item['func'],
                  )
              ],
            )
        ],
      ),
    );
  }
}