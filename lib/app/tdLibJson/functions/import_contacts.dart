part of '../tdlibjson_api.dart';

class ImportContacts extends TdFunction {
  /// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored
  const ImportContacts({
    required this.contacts,
  });

  /// [contacts] The list of contacts to import or edit; contacts' vCard are ignored and are not imported
  final List<Contact> contacts;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "contacts": contacts.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }

  ImportContacts copyWith({
    List<Contact>? contacts,
  }) =>
      ImportContacts(
        contacts: contacts ?? this.contacts,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'importContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
