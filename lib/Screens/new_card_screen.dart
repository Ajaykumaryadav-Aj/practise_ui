import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class NewcardScreen extends StatelessWidget {
  const NewcardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Card'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Card(
          //   color: const Color(0xFF090943),
          //   shape:
          //       BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
          //   child: Container(
          //     height: 250,
          //     width: 390,
          //     child: const Column(
          //       children: [],
          //     ),
          //   ),
          // ),
          CreditCardWidget(
            cardType: CardType.visa,
            isHolderNameVisible: true,
            // obscureCardNumber: true,
            obscureCardCvv: false,

            labelExpiredDate: '05/24',
            cardNumber: '123456',
            expiryDate: '05/25',
            cardHolderName: 'Ajay kumar',
            cvvCode: '4050',
            showBackView: false,
            onCreditCardWidgetChange: (p0) {},
          ),
          CreditCardForm(
            inputConfiguration: InputConfiguration(
                cardNumberDecoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                expiryDateDecoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                cvvCodeDecoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                cardHolderDecoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)))),
            cardNumber: 'Card Number',
            expiryDate: 'Expire Date',
            cardHolderName: 'Card Holder Name',
            cvvCode: '8776',
            onCreditCardModelChange: (p0) {},
            formKey: GlobalKey(),
          )
        ],
      ),
    );
  }
}
