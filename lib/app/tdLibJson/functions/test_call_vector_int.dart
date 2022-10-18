part of '../tdlibjson_api.dart';

class TestCallVectorInt extends TdFunction {

  /// Returns the received vector of numbers; for testing only. This is an offline method. Can be called before authorization
  const TestCallVectorInt({
    required this.x,
  });
  
  /// [x] Vector of numbers to return
  final List<int> x;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "x": "${x.map((i) => i).toList()}"
  }
	""";
  }
  
  TestCallVectorInt copyWith({
    List<int>? x,
  }) => TestCallVectorInt(
    x: x ?? this.x,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testCallVectorInt';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
