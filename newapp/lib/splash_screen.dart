import 'package:flutter/material.dart';
import 'NavBar.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
            child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
            )
          ],
        )),
      ),
    );
  }
}
