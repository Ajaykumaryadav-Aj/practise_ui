import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final TextEditingController _controller = TextEditingController();
  bool showPrefixIcon = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remove Prefix Icon'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller,
          onChanged: (text) {
            setState(() {
              // Check if the text is empty
              showPrefixIcon = text.isNotEmpty;
            });
          },
          decoration: InputDecoration(
            prefixIcon: showPrefixIcon ? const Icon(Icons.search) : null,
            hintText: 'Type something...',
          ),
        ),
      ),
    );
  }
}