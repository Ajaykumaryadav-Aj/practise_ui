import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _controller = TextEditingController();
  bool _obscureText = true;
  bool showPrefixIcon = true;
  // bool passenable = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 25),
            child: Text(
              'Sign Up to Continue',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 14),
            child: Text(
              'Create Your account first . Just need a little\ntime. Enter mail and your passord',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 20),
            child: Text(
              'Email',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            width: 380,
            child: Padding(
              padding: EdgeInsets.only(left: 18, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: 'Your Mail',
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 20),
            child: Text(
              'Password',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 380,
            child: Padding(
              padding: const EdgeInsets.only(left: 18, top: 10),
              child: TextField(
                controller: _controller,
                onChanged: (text) {
                  setState(() {
                    showPrefixIcon = text.isNotEmpty;
                  });
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20),
                  hintText: 'Your Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 5),
            child: Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) => false,
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
                onTap: () {},
                child: Container(
                  height: 55,
                  width: 365,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.green),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )),
          ),
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Or Continue with'),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Image.asset(
                  'assets/google 1.jpg',
                ),
              ),
              const SizedBox(width: 13),
              ElevatedButton(
                  onPressed: () {}, child: Image.asset('assets/apple 1.jpg')),
              const SizedBox(width: 13),
              ElevatedButton(
                  onPressed: () {},
                  child: Image.asset('assets/facebook-app-symbol 1.jpg')),
            ],
          ),
        ],
      ),
    );
  }
}
