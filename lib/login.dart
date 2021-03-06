import 'package:flutter/material.dart';
import 'package:cla4test/helper.dart';
import 'package:cla4test/welcome.dart';


class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            Container(
              height: 120.0,
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQVcSHlXM45-YYNbCht_tvj8OMOl8p9WXRokQ&usqp=CAU'),
            ),

            SizedBox(height: 10.0,),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value){
                //Do something with the user input
              },
              decoration: TextfieldDecoration.copyWith(hintText: "Enter your user name/email"),
            ),
            SizedBox(height: 10.0,),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                //Do something with the user input
              },
              decoration: TextfieldDecoration.copyWith(hintText: "Enter your password"),
            ),
            RoundedButton(
              title: 'Login',
              colour: Colors.deepOrange,
              onPressed: (){
              },
            ),

            RoundedButton(
              title: 'Back to home',
              colour: Colors.green,
              onPressed: (){
                Navigator.popAndPushNamed(context, WelcomeScreen.id);
              },
            ),

          ],
        ),
      ),
    );
  }
}

