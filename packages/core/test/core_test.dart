import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('clampPercent keeps values inside 0–100', () {
    expect(clampPercent(-5), 0);
    expect(clampPercent(42), 42);
    expect(clampPercent(140), 100);
  });

  test('greeting trims the name', () {
    expect(greeting('  Ada '), 'Hello, Ada!');
  });
}
