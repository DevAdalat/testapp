part of '../tdlibjson_api.dart';

class ClearRecentlyFoundChats extends TdFunction {
  /// Clears the list of recently found chats
  const ClearRecentlyFoundChats();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ClearRecentlyFoundChats copyWith() => const ClearRecentlyFoundChats();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'clearRecentlyFoundChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
