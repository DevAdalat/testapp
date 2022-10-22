part of '../tdlibjson_api.dart';

class TextParseMode extends TdObject {
  /// Describes the way the text needs to be parsed for TextEntities
  const TextParseMode();

  /// a TextParseMode return type can be :
  /// * [TextParseModeMarkdown]
  /// * [TextParseModeHTML]
  factory TextParseMode.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case TextParseModeMarkdown.CONSTRUCTOR:
        return TextParseModeMarkdown.fromJson(json);
      case TextParseModeHTML.CONSTRUCTOR:
        return TextParseModeHTML.fromJson(json);
      default:
        return const TextParseMode();
    }
  }

  @override
  String toJson() {
    return """
  {
  
}
	""";
  }

  TextParseMode copyWith() => const TextParseMode();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'textParseMode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextParseModeMarkdown extends TextParseMode {
  /// The text uses Markdown-style formatting
  const TextParseModeMarkdown({
    required this.version,
  });

  /// [version] Version of the parser: 0 or 1 - Telegram Bot API "Markdown" parse mode, 2 - Telegram Bot API "MarkdownV2" parse mode
  final int version;

  /// Parse from a json
  factory TextParseModeMarkdown.fromJson(Map<String, dynamic> json) =>
      TextParseModeMarkdown(
        version: json['version'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "version":$version
}
	""";
  }

  @override
  TextParseModeMarkdown copyWith({
    int? version,
  }) =>
      TextParseModeMarkdown(
        version: version ?? this.version,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'textParseModeMarkdown';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextParseModeHTML extends TextParseMode {
  /// The text uses HTML-style formatting. The same as Telegram Bot API "HTML" parse mode
  const TextParseModeHTML();

  /// Parse from a json
  factory TextParseModeHTML.fromJson(Map<String, dynamic> json) =>
      const TextParseModeHTML();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  @override
  TextParseModeHTML copyWith() => const TextParseModeHTML();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'textParseModeHTML';

  @override
  String getConstructor() => CONSTRUCTOR;
}
