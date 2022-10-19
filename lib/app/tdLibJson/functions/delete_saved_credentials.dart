part of '../tdlibjson_api.dart';

class DeleteSavedCredentials extends TdFunction {
  /// Deletes saved credentials for all payment provider bots
  const DeleteSavedCredentials();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  DeleteSavedCredentials copyWith() => const DeleteSavedCredentials();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteSavedCredentials';

  @override
  String getConstructor() => CONSTRUCTOR;
}
