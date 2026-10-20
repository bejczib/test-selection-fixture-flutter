import 'package:feature/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('GreetingCard shows the payload and the endpoint', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GreetingCard(name: 'Ada', base: Uri.parse('https://example.com/')),
        ),
      ),
    );

    expect(find.textContaining('Hello, Ada!'), findsOneWidget);
    expect(find.text('https://example.com/greet'), findsOneWidget);
    expect(find.byType(Card), findsOneWidget);
  });
}
