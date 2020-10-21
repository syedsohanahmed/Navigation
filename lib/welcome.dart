import 'package:flutter/material.dart';
import 'package:cla4test/helper.dart';
import 'package:cla4test/registration.dart';
import 'package:cla4test/login.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            Row(
              children:<Widget> [
                SizedBox(width:20.0 ,),
                Container(
                  height: 60.0,
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQVcSHlXM45-YYNbCht_tvj8OMOl8p9WXRokQ&usqp=CAU'),
                ),
                SizedBox(width:20.0 ,),
                Text('Friend Chat',
                  style: TextStyle(fontSize: 45.0, fontWeight:FontWeight.w900),
                ),
              ],
            ),
             SizedBox(height: 20,),

            RoundedButton( title: 'Log In', colour: Colors.deepOrange,
            onPressed: (){

              Navigator.pushNamed(context, LoginScreen.id);

            },
            ),
            RoundedButton( title: 'Registration', colour: Colors.blueAccent,
              onPressed: (){
              Navigator.pushNamed(context, RegistraionScreen.id);
              },
            ),

          ],
        ),
      ),
      
      
      
    );
  }
}


