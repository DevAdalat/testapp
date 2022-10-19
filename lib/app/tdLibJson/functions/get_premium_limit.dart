part of '../tdlibjson_api.dart';

class GetPremiumLimit extends TdFunction {
  /// Returns information about a limit, increased for Premium users. Returns a 404 error if the limit is unknown
  const GetPremiumLimit({
    required this.limitType,
  });

  /// [limitType] Type of the limit
  final PremiumLimitType limitType;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "limit_type":"${limitType.toJson()}"
}
	""";
  }

  GetPremiumLimit copyWith({
    PremiumLimitType? limitType,
  }) =>
      GetPremiumLimit(
        limitType: limitType ?? this.limitType,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPremiumLimit';

  @override
  String getConstructor() => CONSTRUCTOR;
}
