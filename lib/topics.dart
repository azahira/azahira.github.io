import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const MaterialApp(
    title: topicsLabel,
    home: TopicsPage(),
  ));
}

class TopicsPage extends StatelessWidget {
  const TopicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(topicsLabel),
        backgroundColor: appColor,
      ),
      body: const Center(
        child:  Text(topicsLabel),
      ),
    );
  }
}