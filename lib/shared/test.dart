import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TestScreen extends StatefulWidget
{

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffEFE6E9),
        title: Text('Test'),
      ),
      body: ToggleButtons(
        isSelected: [true, false],
        fillColor: Colors.red,
        children: [
          Text('اقل سعرا'),
          Text('الاعلي سعرا'),
        ],
      ),
    );
  }
}
