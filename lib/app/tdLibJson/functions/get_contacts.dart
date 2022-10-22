part of '../tdlibjson_api.dart';

class GetContacts extends TdFunction {
  /// Returns all user contacts
  const GetContacts();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  GetContacts copyWith() => const GetContacts();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
