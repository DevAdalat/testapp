part of '../tdlibjson_api.dart';

class TestCallEmpty extends TdFunction {
  /// Does nothing; for testing only. This is an offline method. Can be called before authorization
  const TestCallEmpty();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  TestCallEmpty copyWith() => const TestCallEmpty();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testCallEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;
}
