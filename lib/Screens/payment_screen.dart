import 'package:flutter/material.dart';
import 'package:practise_ui/Screens/home_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
          ListTile(
            leading: const CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(
                'assets/paypal.png',
              ),
            ),
            title: const Text(
              'PayPal Account',
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
            style: ListTileStyle.drawer,

            // tileColor: Colors.amber,
            // textColor: Colors.green,
            // hoverColor: Colors.cyan,
            // selectedColor: Colors.lightBlue,
            shape: const BeveledRectangleBorder(
              side: BorderSide(color: Colors.teal),
            ),
            
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
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.radio_button_unchecked)),
          ),
          TextButton(
              onPressed: () {},
              child: Container(
                height: 55,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black)),
                child: const Row(
                  children: [Icon(Icons.add), Text('Add New card')],
                ),
              ))
        ],
      ),
    );
  }
}
