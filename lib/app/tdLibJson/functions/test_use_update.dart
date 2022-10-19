part of '../tdlibjson_api.dart';

class TestUseUpdate extends TdFunction {
  /// Does nothing and ensures that the Update object is used; for testing only. This is an offline method. Can be called before authorization
  const TestUseUpdate();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  TestUseUpdate copyWith() => const TestUseUpdate();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testUseUpdate';

  @override
  String getConstructor() => CONSTRUCTOR;
}
