part of '../tdlibjson_api.dart';

class DeleteCommands extends TdFunction {

  /// Deletes commands supported by the bot for the given user scope and language; for bots only
  const DeleteCommands({
    this.scope,
    required this.languageCode,
  });
  
  /// [scope] The scope to which the commands are relevant; pass null to delete commands in the default bot command scope
  final BotCommandScope? scope;

  /// [languageCode] A two-letter ISO 639-1 language code or an empty string
  final String languageCode;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "scope": "${scope?.toJson()}",
    "language_code": "$languageCode"
  }
	""";
  }
  
  DeleteCommands copyWith({
    BotCommandScope? scope,
    String? languageCode,
  }) => DeleteCommands(
    scope: scope ?? this.scope,
    languageCode: languageCode ?? this.languageCode,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteCommands';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
