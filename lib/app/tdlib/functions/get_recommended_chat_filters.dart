part of '../tdlibjson.dart';

class GetRecommendedChatFilters extends TdFunction {

  /// Returns recommended chat filters for the current user
  const GetRecommendedChatFilters();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetRecommendedChatFilters copyWith() => const GetRecommendedChatFilters();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getRecommendedChatFilters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
