import 'package:flutter/material.dart';

import 'opening.dart';

void main() {
  runApp(const Quiz_App());
}

class Quiz_App extends StatelessWidget {
  const Quiz_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Opening(),
    );
  }
}
