import 'package:flutter/material.dart';
import 'package:practise_ui/Screens/home_screen.dart';
import 'package:practise_ui/Screens/sign_up_screen.dart';
import 'package:practise_ui/getx/counterapp.dart';

import 'Screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Counterapp(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
              indicatorPadding: const EdgeInsets.only(left: 25, right: 25),
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: const TextStyle(fontSize: 20),
              labelColor: Colors.white,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
                color: Colors.teal,
              ),
              tabs: const [
                Tab(
                  text: 'sign in',
                ),
                Tab(
                  iconMargin: EdgeInsets.all(10),
                  height: 50,
                  text: 'Sign up',
                )
              ]),
        ),
        body: const TabBarView(children: [SignInScreen(), SignUpScreen()]),
      ),
    );
  }
}
