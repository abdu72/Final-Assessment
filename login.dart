import 'package:auth_project/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'sign_up.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/fe/e5/ea/fee5eab30a698c169dc4fd5752359c2c.jpg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 100),
            Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Login is neccesary to access this application',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.person)),
                )),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.lock)),
                  obscureText: true,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: ElevatedButton(
                      style: (ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 32, 77, 155))),
                      onPressed: () async {
                        //if (Credential == true) {
                        
                        await AuthServices.signIn(
                            emailController.text, passwordController.text);
                        //Navigator.pushNamed(context, '/signup');
                        //} else {
                        //return null;
                        //}
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TextButton(
                      onPressed: () //async
                          {
                        //await AuthServices.signUp(
                        //emailController.text, passwordController.text);
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
