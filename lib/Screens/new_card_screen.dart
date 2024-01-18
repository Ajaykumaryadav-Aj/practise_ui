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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              chipColor: Colors.yellow,
              cardBgColor: Colors.black87,
              cardType: CardType.visa,
              isHolderNameVisible: true,
              obscureCardCvv: false,
              labelExpiredDate: '05/24',
              cardNumber: 'XXXX XXXX XXXX 2340',
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
                    labelText: 'Number',
                    hintText: 'XXXX XXXX XXXX XXXX'),
                expiryDateDecoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    labelText: 'Expired Date',
                    hintText: 'XX/XX'),
                cvvCodeDecoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    labelText: 'CVV',
                    hintText: 'XXX'),
                cardHolderDecoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    labelText: 'Card Holder'),
              ),
              obscureCvv: true,
              isHolderNameVisible: true,
              isCardNumberVisible: true,
              isExpiryDateVisible: true,
              enableCvv: true,
              cardNumber: 'Card Number',
              expiryDate: 'Expire Date',
              cardHolderName: 'Card Holder Name',
              cvvCode: '8776',
              onCreditCardModelChange: (p0) {},
              formKey: GlobalKey(),
            ),
            const SizedBox(height: 200),
            InkWell(
                onTap: () {},
                child: Container(
                  height: 55,
                  width: 380,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.teal),
                  child: const Text(
                    ' Continue',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
