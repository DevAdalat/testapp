part of '../tdlibjson_api.dart';

class TestSquareInt extends TdFunction {
  /// Returns the squared received number; for testing only. This is an offline method. Can be called before authorization
  const TestSquareInt({
    required this.x,
  });

  /// [x] Number to square
  final int x;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "x":$x
}
	""";
  }

  TestSquareInt copyWith({
    int? x,
  }) =>
      TestSquareInt(
        x: x ?? this.x,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testSquareInt';

  @override
  String getConstructor() => CONSTRUCTOR;
}
