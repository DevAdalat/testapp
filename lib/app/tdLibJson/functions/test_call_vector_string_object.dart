part of '../tdlibjson_api.dart';

class TestCallVectorStringObject extends TdFunction {
  /// Returns the received vector of objects containing a string; for testing only. This is an offline method. Can be called before authorization
  const TestCallVectorStringObject({
    required this.x,
  });

  /// [x] Vector of objects to return
  final List<TestString> x;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "x":${x.map((i) => i.toJson()).toList()}
}
	""";
  }

  TestCallVectorStringObject copyWith({
    List<TestString>? x,
  }) =>
      TestCallVectorStringObject(
        x: x ?? this.x,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testCallVectorStringObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
