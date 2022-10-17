part of '../tdlibjson_api.dart';

class ClearImportedContacts extends TdFunction {
  /// Clears all imported contacts, contact list remains unchanged
  const ClearImportedContacts();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ClearImportedContacts copyWith() => const ClearImportedContacts();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'clearImportedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
