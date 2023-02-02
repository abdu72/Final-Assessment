import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Milestone extends StatelessWidget {
  const Milestone({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation Demo';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Milestones'),
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
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valuefourth = false;
  double percent = 0.0;
  String _percent = "0";

  @override
  void _openPage(Widget page) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => page,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Milestone', style: TextStyle(fontSize: 28)),
        Container(
            padding: const EdgeInsets.all(50.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircularPercentIndicator(
                    radius: 80.0,
                    lineWidth: 20.0,
                    percent: percent,
                    center: Text("$_percent %"),
                    progressColor: Colors.green,
                  ),
                ])),
        CheckboxListTile(
            title: Text('Step 1'),
            value: this.valuefirst,
            onChanged: (bool? value) {
              setState(() {
                this.valuefirst = value!;
                percent += 0.25;
                _percent = (percent * 100).toString();
              });
            }),
        CheckboxListTile(
            title: Text('Step 2'),
            value: this.valuesecond,
            onChanged: (bool? value) {
              setState(() {
                this.valuesecond = value!;
                percent += 0.25;
                _percent = (percent * 100).toString();
              });
            }),
        CheckboxListTile(
            title: Text('Step 3'),
            value: this.valuethird,
            onChanged: (bool? value) {
              setState(() {
                this.valuethird = value!;
                percent += 0.25;
                _percent = (percent * 100).toString();
              });
            }),
        CheckboxListTile(
            title: Text('Step 4'),
            value: this.valuefourth,
            onChanged: (bool? value) {
              setState(() {
                this.valuefourth = value!;
                percent += 0.25;
                _percent = (percent * 100).toString();
              });
            })
      ],
    );
  }
}
