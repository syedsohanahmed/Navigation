import 'package:cla4test/login.dart';
import 'package:cla4test/registration.dart';
import 'package:cla4test/welcome.dart';
import 'package:flutter/material.dart';
import 'package:cla4test/helper.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistraionScreen.id: (context) => RegistraionScreen(),
      },
    );
  }
}

