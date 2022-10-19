part of '../tdlibjson_api.dart';

class GetTemporaryPasswordState extends TdFunction {
  /// Returns information about the current temporary password
  const GetTemporaryPasswordState();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  GetTemporaryPasswordState copyWith() => const GetTemporaryPasswordState();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getTemporaryPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
