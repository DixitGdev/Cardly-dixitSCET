import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:Cardly/AddCard.dart';
import 'package:Cardly/ShowCard.dart';

class AddCard extends StatefulWidget {
  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);

    return SafeArea(
        child: Container(
      color: baseColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                'Home',
                style: TextStyle(
                    fontFamily: 'Comforta',
                    fontSize: 35,
                    color: Colors.black,
                    decoration: TextDecoration.none),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: NiceButton(
                  padding: EdgeInsets.all(10),
                  width: 250,
                  icon: Icons.credit_card,
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: AddCardFinal(),
                            type: PageTransitionType.rightToLeft));
                  },
                  text: 'Add Card       ',
                  fontSize: 20,
                  radius: 5,
                  gradientColors: [Colors.blue, Colors.cyan]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: NiceButton(
                  padding: EdgeInsets.all(10),
                  width: 250,
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: CreateCard(),
                            type: PageTransitionType.rightToLeft));
                  },
                  text: 'Show Card',
                  fontSize: 20,
                  radius: 5,
                  gradientColors: [Colors.blue, Colors.cyan]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Text(
                'Made by',
                style: TextStyle(
                    fontFamily: 'Comforta',
                    fontSize: 13,
                    color: Colors.black,
                    decoration: TextDecoration.none),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Dixit Ghodadara',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Comforta'),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
