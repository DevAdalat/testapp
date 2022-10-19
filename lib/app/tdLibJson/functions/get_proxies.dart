part of '../tdlibjson_api.dart';

class GetProxies extends TdFunction {
  /// Returns list of proxies that are currently set up. Can be called before authorization
  const GetProxies();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  GetProxies copyWith() => const GetProxies();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getProxies';

  @override
  String getConstructor() => CONSTRUCTOR;
}
