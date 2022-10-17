part of '../tdlibjson_api.dart';

class TestCallBytes extends TdFunction {
  /// Returns the received bytes; for testing only. This is an offline method. Can be called before authorization
  const TestCallBytes({
    required this.x,
  });

  /// [x] Bytes to return
  final String x;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "x": x,
      "@extra": extra,
    };
  }

  TestCallBytes copyWith({
    String? x,
  }) =>
      TestCallBytes(
        x: x ?? this.x,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testCallBytes';

  @override
  String getConstructor() => CONSTRUCTOR;
}
