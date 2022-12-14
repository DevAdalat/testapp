part of '../tdlibjson_api.dart';

class GetAnimatedEmoji extends TdFunction {

  /// Returns an animated emoji corresponding to a given emoji. Returns a 404 error if the emoji has no animated emoji
  const GetAnimatedEmoji({
    required this.emoji,
  });
  
  /// [emoji] The emoji
  final String emoji;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "emoji":"$emoji"
}
	""";
  }
  
  GetAnimatedEmoji copyWith({
    String? emoji,
  }) => GetAnimatedEmoji(
    emoji: emoji ?? this.emoji,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getAnimatedEmoji';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
