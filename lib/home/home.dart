import 'package:flutter/material.dart';
import 'package:startup_flutter/widgets/widget_selfstate.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final loginName = 'LOGIN';
  final listName = 'LIST NAME';

  void gotoListName() {
    Navigator.pushNamed(context, '/names');
  }

  void gotoLogin() {
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
//ButtonCloumn
    InkWell _buildButtonColumn(Color color, IconData icon, String label) {
      return InkWell(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w400, color: color),
              ),
            )
          ],
        ),
        onTap: () {
          if (label == loginName) {
            gotoLogin();
          } else if (label == listName) {
            gotoListName();
          }
        },
      );
    }

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.login, loginName),
        _buildButtonColumn(color, Icons.list, listName),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          SelfStateWidget(),
          const SizedBox(
            height: 20,
          ),
          // TextButton(onPressed: gotoListName, child: Text('Go To List Name')),
          buttonSection,
        ],
      ),
    );
  }
}
