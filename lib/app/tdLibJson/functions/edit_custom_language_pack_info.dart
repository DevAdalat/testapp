part of '../tdlibjson_api.dart';

class EditCustomLanguagePackInfo extends TdFunction {
  /// Edits information about a custom local language pack in the current localization target. Can be called before authorization
  const EditCustomLanguagePackInfo({
    required this.info,
  });

  /// [info] New information about the custom local language pack
  final LanguagePackInfo info;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "info":"${info.toJson()}"
}
	""";
  }

  EditCustomLanguagePackInfo copyWith({
    LanguagePackInfo? info,
  }) =>
      EditCustomLanguagePackInfo(
        info: info ?? this.info,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'editCustomLanguagePackInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
