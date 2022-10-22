part of '../tdlibjson_api.dart';

class GetPremiumFeatures extends TdFunction {
  /// Returns information about features, available to Premium users
  const GetPremiumFeatures({
    this.source,
  });

  /// [source] Source of the request; pass null if the method is called from some non-standard source
  final PremiumSource? source;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "source":${source?.toJson()}
}
	""";
  }

  GetPremiumFeatures copyWith({
    PremiumSource? source,
  }) =>
      GetPremiumFeatures(
        source: source ?? this.source,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPremiumFeatures';

  @override
  String getConstructor() => CONSTRUCTOR;
}
