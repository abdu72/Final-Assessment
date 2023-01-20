//import 'package:projectmdv/main.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign up',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      //home: LoginPage(title: 'Sign up'),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  const SignUpPage({Key? key, required this.title}) : super(key: key);
  _SignUpPageState createState() => _SignUpPageState();
  final String title;
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  String? _nemail, _npassword, _name1, _name2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: new Center(
      //child: new Text(widget.title, textAlign: TextAlign.center)),
      //),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  letterSpacing: 4.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Create your account and enjoy our application now',
              style: TextStyle(
                  color: Colors.black, fontSize: 15, letterSpacing: 1.0),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Front Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          suffixIcon: Icon(Icons.person)),
                      validator: (input) =>
                          !input!.contains('@') ? 'Not a valid email' : null,
                      onSaved: (input) => _name1 = input,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Back Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          suffixIcon: Icon(Icons.person)),
                      validator: (input) =>
                          !input!.contains('@') ? 'Not a valid email' : null,
                      onSaved: (input) => _name2 = input,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'New Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.person)),
                  validator: (input) =>
                      !input!.contains('@') ? 'Not a valid email' : null,
                  onSaved: (input) => _nemail = input,
                )),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.error)),
                  validator: (input) => input!.length < 8
                      ? 'Must be at least 8 characters'
                      : null,
                  onSaved: (input) => _npassword = input,
                  obscureText: true,
                )),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Verification Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.error)),
                  validator: (input) => input!.length < 8
                      ? 'Must be at least 8 characters'
                      : null,
                  onSaved: (input) => _npassword = input,
                  obscureText: true,
                )),
            ElevatedButton(
              onPressed: () {
                _submit;
              },
              child: Text(
                'Sign Up',
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // perform login here
      print(_nemail);
      print(_npassword);
    }
  }

}
