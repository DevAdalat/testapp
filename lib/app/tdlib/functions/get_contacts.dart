part of '../tdlibjson.dart';

class GetContacts extends TdFunction {

  /// Returns all user contacts
  const GetContacts();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetContacts copyWith() => const GetContacts();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getContacts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
