part of '../tdlibjson_api.dart';

class GetEmojiReaction extends TdFunction {

  /// Returns information about a emoji reaction. Returns a 404 error if the reaction is not found
  const GetEmojiReaction({
    required this.emoji,
  });
  
  /// [emoji] Text representation of the reaction
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
  
  GetEmojiReaction copyWith({
    String? emoji,
  }) => GetEmojiReaction(
    emoji: emoji ?? this.emoji,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getEmojiReaction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
