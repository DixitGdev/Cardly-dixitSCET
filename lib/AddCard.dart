import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class AddCardFinal extends StatefulWidget {
  @override
  _AddCardFinalState createState() => _AddCardFinalState();
}

class _AddCardFinalState extends State<AddCardFinal> {
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Tap on CVV field for flip animation',
              style: TextStyle(color: Colors.red),
            ),
            CreditCardWidget(
              cardBgColor: Colors.cyan,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              height: 180,
              textStyle: TextStyle(
                  fontFamily: 'Comforta',
                  color: Colors.black,
                  fontSize: 20,
                  decoration: TextDecoration.none),
              width: MediaQuery.of(context).size.width,
              animationDuration: Duration(milliseconds: 700),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: CreditCardForm(
                    cursorColor: Colors.blue,
                    onCreditCardModelChange: onModelChange),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onModelChange(CreditCardModel model) {
    setState(() {
      cardNumber = model.cardNumber;
      cardHolderName = model.cardHolderName;
      expiryDate = model.expiryDate;
      cvvCode = model.cvvCode;
      isCvvFocused = model.isCvvFocused;
    });
  }
}
