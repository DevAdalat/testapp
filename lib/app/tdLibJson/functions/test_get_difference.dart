part of '../tdlibjson_api.dart';

class TestGetDifference extends TdFunction {
  /// Forces an updates.getDifference call to the Telegram servers; for testing only
  const TestGetDifference();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  TestGetDifference copyWith() => const TestGetDifference();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testGetDifference';

  @override
  String getConstructor() => CONSTRUCTOR;
}
