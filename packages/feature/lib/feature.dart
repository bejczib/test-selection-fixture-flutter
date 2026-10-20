/// A widget that shows the greeting payload and the endpoint it would come from.
library;

import 'package:flutter/material.dart';
import 'package:networking/networking.dart';

class GreetingCard extends StatelessWidget {
  const GreetingCard({super.key, required this.name, required this.base});

  final String name;
  final Uri base;

  @override
  Widget build(BuildContext context) {
    final url = const Endpoint('greet').resolve(base);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(greetingPayload(name)),
            Text(url.toString()),
          ],
        ),
      ),
    );
  }
}
