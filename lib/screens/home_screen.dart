import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("PUSH"),
          color: Colors.green,
          onPressed: () {},
        ),
      ),
    );
  }
}
