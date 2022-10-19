part of '../tdlibjson_api.dart';

class TestNetwork extends TdFunction {
  /// Sends a simple network request to the Telegram servers; for testing only. Can be called before authorization
  const TestNetwork();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  TestNetwork copyWith() => const TestNetwork();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testNetwork';

  @override
  String getConstructor() => CONSTRUCTOR;
}
