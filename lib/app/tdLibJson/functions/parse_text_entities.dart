part of '../tdlibjson_api.dart';

class ParseTextEntities extends TdFunction {

  /// Parses Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Code, Pre, PreCode, TextUrl and MentionName entities from a marked-up text. Can be called synchronously
  const ParseTextEntities({
    required this.text,
    required this.parseMode,
  });
  
  /// [text] The text to parse 
  final String text;

  /// [parseMode] Text parse mode
  final TextParseMode parseMode;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "text":"$text",
   "parse_mode":${parseMode.toJson()}
}
	""";
  }
  
  ParseTextEntities copyWith({
    String? text,
    TextParseMode? parseMode,
  }) => ParseTextEntities(
    text: text ?? this.text,
    parseMode: parseMode ?? this.parseMode,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'parseTextEntities';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
