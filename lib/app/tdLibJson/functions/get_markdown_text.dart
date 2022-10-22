part of '../tdlibjson_api.dart';

class GetMarkdownText extends TdFunction {
  /// Replaces text entities with Markdown formatting in a human-friendly format. Entities that can't be represented in Markdown unambiguously are kept as is. Can be called synchronously
  const GetMarkdownText({
    required this.text,
  });

  /// [text] The text
  final FormattedText text;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "text":${text.toJson()}
}
	""";
  }

  GetMarkdownText copyWith({
    FormattedText? text,
  }) =>
      GetMarkdownText(
        text: text ?? this.text,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getMarkdownText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
