part of '../tdlibjson_api.dart';

class GetNetworkStatistics extends TdFunction {
  /// Returns network data usage statistics. Can be called before authorization
  const GetNetworkStatistics({
    required this.onlyCurrent,
  });

  /// [onlyCurrent] Pass true to get statistics only for the current library launch
  final bool onlyCurrent;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "only_current":$onlyCurrent
}
	""";
  }

  GetNetworkStatistics copyWith({
    bool? onlyCurrent,
  }) =>
      GetNetworkStatistics(
        onlyCurrent: onlyCurrent ?? this.onlyCurrent,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getNetworkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
