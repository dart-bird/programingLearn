import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reuseable_card.dart';

const bottomContainerHeight = 80.0;
const cardColourHex = Color(0xFF1D1E33);
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;
  // 1 = male , 2 = female
  void updateColour(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColour == inactiveCardColour) {
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
      } else {
        maleCardColour = inactiveCardColour;
        femaleCardColour = activeCardColour;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColour == inactiveCardColour) {
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
        maleCardColour = activeCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI 계산기'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.male);
                      });
                    },
                    child: ReuseableCard(
                      colour: maleCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: '남자',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.female);
                      });
                    },
                    child: ReuseableCard(
                      colour: femaleCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: '여자',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: cardColourHex,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colour: cardColourHex,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: cardColourHex,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
