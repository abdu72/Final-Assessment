import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:new_file/screen/group_member.dart';
import 'package:new_file/screen/project_details.dart';
import 'package:new_file/screen/milestones.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AccordionPage extends StatelessWidget {
  const AccordionPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _AccordionPage(),
    );
  }
}

class _AccordionPage extends StatelessWidget {
  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);

  final _milestone1 = "Project Planning";

  final _milestone2 = "Design";

  final _milestone3 = "Development";

  final _milestone4 = "Testing";

  final _milestone5 = "Project Closure";

  @override
  Widget build(context) => Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: const Text('Group Project Management'),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.all(3),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.logout),
                ))
          ],
        ),
        body: Accordion(
          maxOpenSections: 2,
          headerBackgroundColorOpened: Colors.black54,
          scaleWhenAnimating: true,
          openAndCloseAnimation: true,
          headerPadding:
              const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          sectionClosingHapticFeedback: SectionHapticFeedback.light,
          children: [
//Group Project Detail

            AccordionSection(
              isOpen: true,
              leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
              headerBackgroundColor: Colors.black,
              headerBackgroundColorOpened: Colors.red,
              header: Text('Group Project Detail', style: _headerStyle),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Edit your group details here'),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProjectDetails()));
                    },
                    child: const Text('Open'),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,

              //onOpenSection: () => print('onOpenSection ...'),
              // onCloseSection: () => print('onCloseSection ...'),
            ),

//Milestones

            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
              header: Text('Project Milestones', style: _headerStyle),
              contentBorderColor: const Color(0xffffffff),
              headerBackgroundColorOpened: Colors.amber,
              content: Accordion(
                maxOpenSections: 1,
                headerBackgroundColorOpened: Colors.black54,
                headerPadding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                children: [
                  AccordionSection(
                    isOpen: true,
                    leftIcon:
                        const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: Colors.black38,
                    headerBackgroundColorOpened: Colors.black54,
                    header: Text('Milestone #1', style: _headerStyle),
                    content: Row(
                      children: [
                        const Icon(Icons.compare_rounded,
                            size: 120, color: Colors.orangeAccent),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Milestone()));
                          },
                          child: Text(_milestone1),
                        ),
                      ],
                    ),
                    contentHorizontalPadding: 20,
                    contentBorderColor: Colors.black54,
                  ),
                  AccordionSection(
                    isOpen: true,
                    leftIcon:
                        const Icon(Icons.insights_rounded, color: Colors.white),
                    header: Text('Milestone #2', style: _headerStyle),
                    headerBackgroundColor: Colors.black38,
                    headerBackgroundColorOpened: Colors.black54,
                    contentBorderColor: Colors.black54,
                    content: Row(
                      children: [
                        const Icon(Icons.compare_rounded,
                            size: 120, color: Colors.orangeAccent),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Milestone()));
                          },
                          child: Text(_milestone2),
                        ),
                      ],
                    ),
                  ),
                  AccordionSection(
                    isOpen: true,
                    leftIcon:
                        const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: Colors.black38,
                    headerBackgroundColorOpened: Colors.black54,
                    header: Text('Milestone #3', style: _headerStyle),
                    content: Row(
                      children: [
                        const Icon(Icons.compare_rounded,
                            size: 120, color: Colors.orangeAccent),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Milestone()));
                          },
                          child: Text(_milestone3),
                        ),
                      ],
                    ),
                    contentHorizontalPadding: 20,
                    contentBorderColor: Colors.black54,
                  ),
                  AccordionSection(
                    isOpen: true,
                    leftIcon:
                        const Icon(Icons.insights_rounded, color: Colors.white),
                    header: Text('Milestone #4', style: _headerStyle),
                    headerBackgroundColor: Colors.black38,
                    headerBackgroundColorOpened: Colors.black54,
                    contentBorderColor: Colors.black54,
                    content: Row(
                      children: [
                        const Icon(Icons.compare_rounded,
                            size: 120, color: Colors.orangeAccent),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Milestone()));
                          },
                          child: Text(_milestone4),
                        ),
                      ],
                    ),
                  ),
                  AccordionSection(
                    isOpen: true,
                    leftIcon:
                        const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: Colors.black38,
                    headerBackgroundColorOpened: Colors.black54,
                    header: Text('Milestone #5', style: _headerStyle),
                    content: Row(
                      children: [
                        const Icon(Icons.compare_rounded,
                            size: 120, color: Colors.orangeAccent),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Milestone()));
                          },
                          child: Text(_milestone5),
                        ),
                      ],
                    ),
                    contentHorizontalPadding: 20,
                    contentBorderColor: Colors.black54,
                  ),
                ],
              ),
            ),

//Group Member Info
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.food_bank, color: Colors.white),
              header: Text('Group Members', style: _headerStyle),
              headerBackgroundColorOpened: Colors.amber,
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Add your group member here'),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GroupMember()));
                    },
                    child: const Text('Add'),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),

            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.map, color: Colors.white),
              header: Text('Overall Progress', style: _headerStyle),
              headerBackgroundColorOpened: Colors.amber,
              content: CircularPercentIndicator(
                radius: 80.0,
                lineWidth: 20.0,
                percent: 0.8,
                center: const Text("80 %"),
                progressColor: Colors.green,
              ),
            ),
          ],
        ),
      );
} //__
