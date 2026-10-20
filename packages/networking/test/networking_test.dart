import 'package:flutter_test/flutter_test.dart';
import 'package:networking/networking.dart';

void main() {
  test('Endpoint resolves against the base URL', () {
    final url = const Endpoint('greet').resolve(Uri.parse('https://example.com/api/'));
    expect(url.toString(), 'https://example.com/api/greet');
  });

  test('greetingPayload wraps the greeting', () {
    expect(greetingPayload('Ada'), '{"message":"Hello, Ada!"}');
  });
}
