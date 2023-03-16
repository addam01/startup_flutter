import 'package:flutter/material.dart';
import 'package:startup_flutter/widgets/widget_selfstate.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //Title Section
    Widget titleSection = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          /*1 Exanpded stretches the row to fit UI*/
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text("Some Lake Playground"),
              ),

              /*2*/
              Text(
                "Somewhere, Swizerland",
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          )),

          /*2*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text("41")
        ],
      ),
    );

//ButtonCloumn
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
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
      );
    }

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, "CALL"),
        _buildButtonColumn(color, Icons.near_me, "ROUTE"),
        _buildButtonColumn(color, Icons.share, "SHARE")
      ],
    );

    // ignore: unused_local_variable
    Widget bodyContent = ListView(
      children: [
        Image.asset(
          'images/burn.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        titleSection,
        buttonSection,
        textSection,
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SelfStateWidget(),
    );
  }
}
