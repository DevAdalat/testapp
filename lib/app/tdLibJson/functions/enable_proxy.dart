part of '../tdlibjson_api.dart';

class EnableProxy extends TdFunction {
  /// Enables a proxy. Only one proxy can be enabled at a time. Can be called before authorization
  const EnableProxy({
    required this.proxyId,
  });

  /// [proxyId] Proxy identifier
  final int proxyId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "proxy_id": proxyId,
      "@extra": extra,
    };
  }

  EnableProxy copyWith({
    int? proxyId,
  }) =>
      EnableProxy(
        proxyId: proxyId ?? this.proxyId,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'enableProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
