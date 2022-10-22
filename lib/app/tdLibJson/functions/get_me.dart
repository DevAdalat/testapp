part of '../tdlibjson_api.dart';

class GetMe extends TdFunction {
  /// Returns the current user
  const GetMe();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  GetMe copyWith() => const GetMe();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getMe';

  @override
  String getConstructor() => CONSTRUCTOR;
}
