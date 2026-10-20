/// Pure Dart helpers shared by every package in the fixture.
library;

/// Clamps [value] into the 0–100 range.
int clampPercent(int value) {
  if (value < 0) return 0;
  if (value > 100) return 100;
  return value;
}

/// Formats a greeting for [name].
String greeting(String name) => 'Hello, ${name.trim()}!';

/// Formats a farewell for [name].
String farewell(String name) => 'Bye, ${name.trim()}!';
