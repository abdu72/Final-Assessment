import 'package:auth_project/login_page.dart';
import 'package:auth_project/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/signin': (BuildContext context) => LoginPage(),
        '/signup': (BuildContext context) => SignUpPage(),
      },
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    );
  }
}
