part of '../tdlibjson_api.dart';

class GetRecommendedChatFilters extends TdFunction {
  /// Returns recommended chat filters for the current user
  const GetRecommendedChatFilters();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  GetRecommendedChatFilters copyWith() => const GetRecommendedChatFilters();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getRecommendedChatFilters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
