import 'package:credit_card/credit_card_form.dart';
import 'package:credit_card/credit_card_model.dart';
import 'package:credit_card/credit_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CardAddNew extends StatefulWidget {
  @override
  _CardAddNewState createState() => _CardAddNewState();
}

class _CardAddNewState extends State<CardAddNew> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: <Widget> [
            CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                height: 200,
                width: MediaQuery.of(context).size.width,
                animationDuration: Duration(microseconds: 1000),
            ),
            new OutlineButton(
                child: Text(
                  'Proceed to Pay',
                  style: TextStyle(color: Colors.green),
                ),
                onPressed: null,
              shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: CreditCardForm(
                  onCreditCardModelChange: onModelChange,
                ),
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
      expiryDate = model.expiryDate;
      cardHolderName =model.cardHolderName;
      cvvCode = model.cvvCode;
      isCvvFocused = model.isCvvFocused;

    });
  }

}




