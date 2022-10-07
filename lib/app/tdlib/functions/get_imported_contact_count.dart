part of '../tdlibjson.dart';

class GetImportedContactCount extends TdFunction {

  /// Returns the total number of imported contacts
  const GetImportedContactCount();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetImportedContactCount copyWith() => const GetImportedContactCount();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getImportedContactCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
