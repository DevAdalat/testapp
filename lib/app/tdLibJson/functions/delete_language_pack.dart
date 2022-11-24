part of '../tdlibjson_api.dart';

class DeleteLanguagePack extends TdFunction {

  /// Deletes all information about a language pack in the current localization target. The language pack which is currently in use (including base language pack) or is being synchronized can't be deleted. Can be called before authorization
  const DeleteLanguagePack({
    required this.languagePackId,
  });
  
  /// [languagePackId] Identifier of the language pack to delete
  final String languagePackId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "language_pack_id":"$languagePackId"
}
	""";
  }
  
  DeleteLanguagePack copyWith({
    String? languagePackId,
  }) => DeleteLanguagePack(
    languagePackId: languagePackId ?? this.languagePackId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteLanguagePack';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
