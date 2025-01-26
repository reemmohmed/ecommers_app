import 'package:flutter/material.dart';

class Logen extends StatelessWidget {
  const Logen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: const SafeArea(
        child: Text('data'),
      ),
    );
  }
}
