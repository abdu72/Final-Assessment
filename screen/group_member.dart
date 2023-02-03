import 'package:flutter/material.dart';

class GroupMember extends StatelessWidget {
  const GroupMember({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Group Member';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Add Member'),
            leading: GestureDetector(
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )),
        body: const MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);

  String _word = "";
  final growableList = <String>[''];

  void _setWord(String word) {
    setState(() {
      _word = word;
    });
    _emailToList(word);
  }

  void _emailToList(String email) {
    growableList.add(email);
  }

  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(30),
              child: const Text(
                "Invite Member by Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration:
                    const InputDecoration(border: UnderlineInputBorder()),
                keyboardType: TextInputType.emailAddress,
                controller: myController,
              ),
            ),
            ElevatedButton(
                onPressed: () => _setWord(myController.text),
                child: const Text('Analyze')),
            Expanded(
                child: ListView.builder(
              itemCount: growableList.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text('${growableList.elementAt(index)}'),
                );
              }),
            )),
          ]),
    ));
  }
}
