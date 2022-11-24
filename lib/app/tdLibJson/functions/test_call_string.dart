part of '../tdlibjson_api.dart';

class TestCallString extends TdFunction {

  /// Returns the received string; for testing only. This is an offline method. Can be called before authorization
  const TestCallString({
    required this.x,
  });
  
  /// [x] String to return
  final String x;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "x":"$x"
}
	""";
  }
  
  TestCallString copyWith({
    String? x,
  }) => TestCallString(
    x: x ?? this.x,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testCallString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
