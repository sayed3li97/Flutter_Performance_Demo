import 'package:flutter/material.dart';

final style = TextStyle(fontSize: 40);
void main() => runApp(
      WidgetsApp(
        debugShowCheckedModeBanner: false,
        color: Color(0xFFFFFFFF),
        builder: (context, _) => MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  var switchTree = true;
  Widget get firstTree => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            text: TextSpan(text: "Hello Dart", style: style),
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/dart_logo.png',
            height: 40,
          )
        ],
      );

  Widget get secondTree => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            text: TextSpan(text: "Hello Flutter", style: style),
          ),
          SizedBox(
            width: 10,
          ),
          // Padding(padding: EdgeInsets.only(right: 10)),
          Image.asset(
            'assets/flutter_logo.png',
            height: 40,
          )
        ],
      );

  Widget get switchButton => GestureDetector(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: RichText(
            text: TextSpan(text: "Switch Tree"),
          ),
        ),
        onTap: () => setState(
          () => switchTree = !switchTree,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: switchTree == true ? firstTree : secondTree),
        switchButton
      ],
    );
  }
}
