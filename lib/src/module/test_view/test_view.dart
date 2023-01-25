import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  final Text testMessage = const Text('It\'s a test view!');

  @override
  Widget build(BuildContext context) {
    debugPrint('It\'s a test view message from you console!');
    return Scaffold(
      appBar: AppBar(title: testMessage),
      body: Center(child: testMessage),
    );
  }
}
