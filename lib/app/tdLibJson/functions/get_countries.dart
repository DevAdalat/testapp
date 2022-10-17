part of '../tdlibjson_api.dart';

class GetCountries extends TdFunction {
  /// Returns information about existing countries. Can be called before authorization
  const GetCountries();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetCountries copyWith() => const GetCountries();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getCountries';

  @override
  String getConstructor() => CONSTRUCTOR;
}
