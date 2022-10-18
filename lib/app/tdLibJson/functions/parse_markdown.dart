part of '../tdlibjson_api.dart';

class ParseMarkdown extends TdFunction {

  /// Parses Markdown entities in a human-friendly format, ignoring markup errors. Can be called synchronously
  const ParseMarkdown({
    required this.text,
  });
  
  /// [text] The text to parse. For example, "__italic__
  final FormattedText text;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "text": "${text.toJson()}"
  }
	""";
  }
  
  ParseMarkdown copyWith({
    FormattedText? text,
  }) => ParseMarkdown(
    text: text ?? this.text,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'parseMarkdown';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
