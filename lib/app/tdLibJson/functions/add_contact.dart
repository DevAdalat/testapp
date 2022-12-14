part of '../tdlibjson_api.dart';

class AddContact extends TdFunction {

  /// Adds a user to the contact list or edits an existing contact by their user identifier
  const AddContact({
    required this.contact,
    required this.sharePhoneNumber,
  });
  
  /// [contact] The contact to add or edit; phone number may be empty and needs to be specified only if known, vCard is ignored
  final Contact contact;

  /// [sharePhoneNumber] Pass true to share the current user's phone number with the new contact. A corresponding rule to userPrivacySettingShowPhoneNumber will be added if needed. Use the field userFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be asked to share their phone number
  final bool sharePhoneNumber;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "contact":${contact.toJson()},
   "share_phone_number":$sharePhoneNumber
}
	""";
  }
  
  AddContact copyWith({
    Contact? contact,
    bool? sharePhoneNumber,
  }) => AddContact(
    contact: contact ?? this.contact,
    sharePhoneNumber: sharePhoneNumber ?? this.sharePhoneNumber,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'addContact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
