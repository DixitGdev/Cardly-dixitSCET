import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';
import 'package:nice_button/nice_button.dart';

class CreateCard extends StatefulWidget {
  @override
  _CreateCardState createState() => _CreateCardState();
}

class _CreateCardState extends State<CreateCard> {
  bool _back = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFF2F2F2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CreditCard(
              height: 200,
              width: 320,
              cardNumber: "548 647 XXX",
              cardExpiry: "10/25",
              cardHolderName: "Dixit Ghodadara",
              cvv: "456",
              bankName: "Axis Bank",
              cardType: CardType.visa,
              showBackSide: _back,
              frontBackground: CardBackgrounds.black,
              backBackground: CardBackgrounds.white,
              showShadow: true,
            ),
            SizedBox(
              height: 20,
            ),
            CreditCard(
              height: 200,
              width: 320,
              cardNumber: "985 223 XXXX",
              cardExpiry: "10/25",
              cardHolderName: "Dixit Ghodadara",
              cvv: "456",
              bankName: "Scotia Bank",
              cardType: CardType.masterCard,
              showBackSide: _back,
              frontBackground: CardBackgrounds.black,
              backBackground: CardBackgrounds.white,
              showShadow: true,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: NiceButton(
                  padding: EdgeInsets.all(10),
                  width: 150,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  text: 'Back',
                  fontSize: 20,
                  radius: 5,
                  gradientColors: [Colors.blue, Colors.cyan]),
            ),
          ],
        ),
      ),
    );
  }
}
