import 'package:fixture_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FixtureApp renders the greeting', (tester) async {
    await tester.pumpWidget(const FixtureApp());

    expect(find.text('Fixture'), findsOneWidget);
    expect(find.textContaining('Hello, Ada!'), findsOneWidget);
  });
}
