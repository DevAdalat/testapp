part of '../tdlibjson.dart';

class GetApplicationConfig extends TdFunction {

  /// Returns application config, provided by the server. Can be called before authorization
  const GetApplicationConfig();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetApplicationConfig copyWith() => const GetApplicationConfig();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getApplicationConfig';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
