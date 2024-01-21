import 'package:flutter/material.dart';
import 'package:practise_ui/Screens/home_screen.dart';
import 'package:practise_ui/Screens/new_card_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ));
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: RichText(
              text: const TextSpan(
                  text: 'Which ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: 'Payment ', style: TextStyle(color: Colors.teal)),
                    TextSpan(text: 'do you want to ', style: TextStyle()),
                    TextSpan(text: 'use for ', style: TextStyle()),
                    TextSpan(
                        text: 'Appointment? ',
                        style: TextStyle(color: Colors.teal)),
                  ]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 205, top: 20),
            child: Text(
              'Choose Payment',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 90,
            width: 380,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.teal),
                borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              leading: Container(
                height: 55,
                width: 55,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 193, 229, 151),
                ),
                child: Image.asset(
                  'assets/paypal.png',
                  scale: 8,
                ),
              ),
              title: const Text(
                'PayPal Account',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('aj************@gmail.com'),
              trailing: Radio(
                activeColor: Colors.teal,
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
              ),
            ),
          ),
          const SizedBox(height: 12),
          ListTile(
            leading: Container(
              height: 55,
              width: 55,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/google 1.jpg'),
                ),
                color: Color.fromARGB(255, 193, 229, 151),
                shape: BoxShape.circle,
              ),
            ),
            title: const Text(
              'Google Pay',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('aj************@gmail.com'),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.radio_button_unchecked)),
          ),
          const SizedBox(height: 12),
          ListTile(
            leading: Container(
              height: 55,
              width: 55,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/apple 1.jpg'),
                ),
                color: Color.fromARGB(255, 193, 229, 151),
                shape: BoxShape.circle,
              ),
            ),
            title: const Text(
              'Apple',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('aj************@gmail.com'),
            trailing: const Icon(Icons.radio_button_unchecked),
          ),
          const SizedBox(height: 15),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewcardScreen(),
                    ));
              },
              child: Container(
                height: 55,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.teal, width: 2),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 13),
                  child: Wrap(
                    spacing: 150,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.teal,
                      ),
                      Text(
                        'Add New card',
                        style: TextStyle(color: Colors.teal),
                      )
                    ],
                  ),
                ),
              )),
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
            ),
          ),
        ],
      ),
    );
  }
}
