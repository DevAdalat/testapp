part of '../tdlibjson_api.dart';

class ChangeImportedContacts extends TdFunction {
  /// Changes imported contacts using the list of contacts saved on the device. Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts.. Query result depends on the result of the previous query, so only one query is possible at the same time
  const ChangeImportedContacts({
    required this.contacts,
  });

  /// [contacts] The new list of contacts, contact's vCard are ignored and are not imported
  final List<Contact> contacts;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "contacts":"${contacts.map((i) => i.toJson()).toList()}"
}
	""";
  }

  ChangeImportedContacts copyWith({
    List<Contact>? contacts,
  }) =>
      ChangeImportedContacts(
        contacts: contacts ?? this.contacts,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'changeImportedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
