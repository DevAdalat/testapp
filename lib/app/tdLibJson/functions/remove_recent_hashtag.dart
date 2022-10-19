part of '../tdlibjson_api.dart';

class RemoveRecentHashtag extends TdFunction {
  /// Removes a hashtag from the list of recently used hashtags
  const RemoveRecentHashtag({
    required this.hashtag,
  });

  /// [hashtag] Hashtag to delete
  final String hashtag;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "hashtag":"$hashtag"
}
	""";
  }

  RemoveRecentHashtag copyWith({
    String? hashtag,
  }) =>
      RemoveRecentHashtag(
        hashtag: hashtag ?? this.hashtag,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeRecentHashtag';

  @override
  String getConstructor() => CONSTRUCTOR;
}
