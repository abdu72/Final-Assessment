import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 250),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: AnimatedButton(
                animatedOn: AnimatedOn.onHover,
                onPress: () {
                  Navigator.pushNamed(context, '/signin');
                },
                onChanges: (change) {},
                height: 70,
                width: 300,
                text: 'SIGNIN',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.LEFT_TOP_ROUNDER,
                backgroundColor: Colors.black,
                selectedBackgroundColor: Colors.lightGreen,
                borderColor: Colors.white,
                borderWidth: 1,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: AnimatedButton(
                animatedOn: AnimatedOn.onHover,
                onPress: () {
                  Navigator.pushNamed(context, '/signup');
                },
                onChanges: (change) {},
                height: 70,
                width: 300,
                text: 'SIGNUP',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.LEFT_TOP_ROUNDER,
                backgroundColor: Colors.black,
                selectedBackgroundColor: Colors.lightGreen,
                borderColor: Colors.white,
                borderWidth: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
