import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MakeItRainState();
  }
}

class MakeItRainState extends State<HomePage> {
  int _tasbehCount = 0;

  void counter() {
    setState(() {
      _tasbehCount = _tasbehCount + 1;
    });
  }

  void refresh() {
    setState(() {
      _tasbehCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Tasbeh app !'),
        backgroundColor: Colors.red,
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Center(
            child: Text(
              "Subhanallah !\nAlhamdulillah !\nAllohu Akbar !",
              style: TextStyle(fontSize: 31.0, color: Colors.red),
            ),
          ),
          Expanded(
              child: Center(
            child: Text('$_tasbehCount',
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.w500),),
          )),
          Expanded(
              child: Center(
            child: FlatButton(
                color: Colors.red,
                textColor: Theme.of(context).buttonColor,
                onPressed: counter,
                child: Text(
                  "Make it Rain!",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
          )),
          Expanded(
              child: Center(
            child: FlatButton(
                color: Colors.lightGreen,
                textColor: Theme.of(context).buttonColor,
                onPressed: refresh,
                child: Text("Refresh!", style: TextStyle(fontSize: 18, color: Colors.black),
                )),
          ))
        ],
      )),
    );
  }
}

