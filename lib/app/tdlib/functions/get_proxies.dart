part of '../tdlibjson.dart';

class GetProxies extends TdFunction {

  /// Returns list of proxies that are currently set up. Can be called before authorization
  const GetProxies();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetProxies copyWith() => const GetProxies();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getProxies';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
