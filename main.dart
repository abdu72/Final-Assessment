import 'package:flutter/material.dart';
import 'package:projectmdv/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignUpPage(title: 'Sign up'),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LoginPage(title: 'Log in'),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  const LoginPage({Key? key, required this.title}) : super(key: key);
  _LoginPageState createState() => _LoginPageState();
  final String title;
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String? _email, _password;

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
            SizedBox(height: 100),
            Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  letterSpacing: 4.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Login neccesary to access this application',
              style: TextStyle(
                  color: Colors.black, fontSize: 15, letterSpacing: 1.0),
            ),
            SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.person)),
                  validator: (input) =>
                      !input!.contains('@') ? 'Not a valid email' : null,
                  onSaved: (input) => _email = input,
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
                  onSaved: (input) => _password = input,
                  obscureText: true,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        _submit;
                      },
                      child: Text(
                        'Login',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        'Sign Up',
                      ),
                    ),
                  ),
                ),
              ],
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
      print(_email);
      print(_password);
    }
  }

  //RaisedButton({required void Function() onPressed, required Text child}) {}
}
