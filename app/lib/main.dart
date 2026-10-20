import 'package:feature/feature.dart';
import 'package:flutter/material.dart';

void main() => runApp(const FixtureApp());

class FixtureApp extends StatelessWidget {
  const FixtureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fixture app',
      home: Scaffold(
        appBar: AppBar(title: const Text('Fixture')),
        body: Center(
          child: GreetingCard(name: 'Ada', base: Uri.parse('https://example.com/')),
        ),
      ),
    );
  }
}
