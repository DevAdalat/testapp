part of '../tdlibjson_api.dart';

class ClearRecentReactions extends TdFunction {
  /// Clears the list of recently used reactions
  const ClearRecentReactions();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ClearRecentReactions copyWith() => const ClearRecentReactions();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'clearRecentReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
