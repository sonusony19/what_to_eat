import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What To Eat"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.orange.shade50,
        alignment: Alignment.center,
        child: Container(
          width: 200,
          height: 150,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
