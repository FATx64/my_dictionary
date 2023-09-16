import 'package:flutter/material.dart';


class Color_Screen extends StatelessWidget {
  const Color_Screen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Characters"),
      ),
      body: Center(
        child: Text('Color Screen '),

      ),
    );
  }
}