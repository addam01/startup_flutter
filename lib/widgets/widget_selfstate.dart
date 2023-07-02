import 'package:flutter/material.dart';

class SelfStateWidget extends StatefulWidget {
  const SelfStateWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SelfStateWidget();
}

class _SelfStateWidget extends State<SelfStateWidget> {
  String inputText = '';

  void handleChange(String newValue) {
    setState(() {
      inputText = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: TextField(
            onChanged: (value) => handleChange(value),
            decoration: InputDecoration(
                hintText: 'Type something...',
                contentPadding: EdgeInsets.all(16),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(2))),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Text(
            'Text Input : $inputText',
            style: TextStyle(
                fontSize: 18, color: Colors.pink, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
