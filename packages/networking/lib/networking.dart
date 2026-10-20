/// Endpoint helpers built on `core`.
library;

import 'package:core/core.dart';

/// An API path relative to a base URL.
class Endpoint {
  const Endpoint(this.path);

  final String path;

  Uri resolve(Uri base) => base.resolve(path);
}

/// The payload the greeting endpoint would return for [name].
String greetingPayload(String name) => '{"message":"${greeting(name)}"}';
