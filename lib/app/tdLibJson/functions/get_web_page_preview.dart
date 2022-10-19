part of '../tdlibjson_api.dart';

class GetWebPagePreview extends TdFunction {
  /// Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview
  const GetWebPagePreview({
    required this.text,
  });

  /// [text] Message text with formatting
  final FormattedText text;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "text":"${text.toJson()}"
}
	""";
  }

  GetWebPagePreview copyWith({
    FormattedText? text,
  }) =>
      GetWebPagePreview(
        text: text ?? this.text,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getWebPagePreview';

  @override
  String getConstructor() => CONSTRUCTOR;
}
