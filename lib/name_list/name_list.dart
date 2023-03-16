import 'package:flutter/material.dart';

class NameList extends StatefulWidget {
  const NameList({Key? key}) : super(key: key);

  @override
  State<NameList> createState() => _NameListState();
}

class _NameListState extends State<NameList> {
  List<String> names = ['Jacob', 'Mark', 'Cain'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name List Sample'),
      ),
      body: Column(
        children: names.map((name) => Text(name)).toList(),
      ),
    );
  }
}
