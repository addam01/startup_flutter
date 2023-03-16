// Format document : Shift + Option + F
import 'package:flutter/material.dart';
import 'package:startup_flutter/home/home.dart';
import 'package:startup_flutter/name_list/name_list.dart';

/// MyApp is usual app
/// Change to MyApp -> body to StatefulScreen to test the stateful widget
/// Change to StatelessScreen to test the stateless widget
void main() => runApp(const MyApp());

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/names': (context) => NameList(),
      },
    );
  }
}

Widget constraintW = Center(
  child: FittedBox(
    child: Text(
        'This is some very very very large text that is too big to fit a regular screen in a single line. Oh boy'),
  ),
);
