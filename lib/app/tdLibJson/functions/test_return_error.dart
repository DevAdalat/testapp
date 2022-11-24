part of '../tdlibjson_api.dart';

class TestReturnError extends TdFunction {

  /// Returns the specified error and ensures that the Error object is used; for testing only. Can be called synchronously
  const TestReturnError({
    required this.error,
  });
  
  /// [error] The error to be returned
  final TdError error;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "error":${error.toJson()}
}
	""";
  }
  
  TestReturnError copyWith({
    TdError? error,
  }) => TestReturnError(
    error: error ?? this.error,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testReturnError';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
