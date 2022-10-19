part of '../tdlibjson_api.dart';

class GetLocalizationTargetInfo extends TdFunction {
  /// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization
  const GetLocalizationTargetInfo({
    required this.onlyLocal,
  });

  /// [onlyLocal] Pass true to get only locally available information without sending network requests
  final bool onlyLocal;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "only_local":$onlyLocal
}
	""";
  }

  GetLocalizationTargetInfo copyWith({
    bool? onlyLocal,
  }) =>
      GetLocalizationTargetInfo(
        onlyLocal: onlyLocal ?? this.onlyLocal,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getLocalizationTargetInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
