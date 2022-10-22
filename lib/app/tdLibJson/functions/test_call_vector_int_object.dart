part of '../tdlibjson_api.dart';

class TestCallVectorIntObject extends TdFunction {
  /// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization
  const TestCallVectorIntObject({
    required this.x,
  });

  /// [x] Vector of objects to return
  final List<TestInt> x;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "x":${x.map((i) => i.toJson()).toList()}
}
	""";
  }

  TestCallVectorIntObject copyWith({
    List<TestInt>? x,
  }) =>
      TestCallVectorIntObject(
        x: x ?? this.x,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testCallVectorIntObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
