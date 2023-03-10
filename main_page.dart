import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/originals/fe/e5/ea/fee5eab30a698c169dc4fd5752359c2c.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Text(
                    'Group Project Management App',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
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
                    text: 'Log In',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.LEFT_TOP_ROUNDER,
                    backgroundColor: Color.fromARGB(255, 32, 77, 155),
                    selectedBackgroundColor: Colors.grey,
                    borderColor: Colors.white,
                    borderWidth: 2,
                    borderRadius: 10,
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
                    text: 'Sign Up',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.LEFT_TOP_ROUNDER,
                    backgroundColor: Colors.blueAccent,
                    selectedBackgroundColor: Colors.grey,
                    borderColor: Colors.white,
                    borderWidth: 2,
                    borderRadius: 10,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
