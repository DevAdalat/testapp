part of '../tdlibjson.dart';

class RemoveRecentHashtag extends TdFunction {

  /// Removes a hashtag from the list of recently used hashtags
  const RemoveRecentHashtag({
    required this.hashtag,
  });
  
  /// [hashtag] Hashtag to delete
  final String hashtag;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "hashtag": hashtag,
      "@extra": extra,
    };
  }
  
  RemoveRecentHashtag copyWith({
    String? hashtag,
  }) => RemoveRecentHashtag(
    hashtag: hashtag ?? this.hashtag,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeRecentHashtag';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
