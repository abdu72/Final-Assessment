import 'package:flutter/material.dart';
import 'package:projectmdv/qrcode.dart';
import 'package:projectmdv/sign_up.dart';

import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => const SignUpPage(title: 'Sign up'),
        '/qrcode': (BuildContext context) => QRViewExample(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(title: 'Log in'),
    );
  }
}
