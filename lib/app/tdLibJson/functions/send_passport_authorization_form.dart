part of '../tdlibjson_api.dart';

class SendPassportAuthorizationForm extends TdFunction {

  /// Sends a Telegram Passport authorization form, effectively sharing data with the service. This method must be called after getPassportAuthorizationFormAvailableElements if some previously available elements are going to be reused
  const SendPassportAuthorizationForm({
    required this.autorizationFormId,
    required this.types,
  });
  
  /// [autorizationFormId] Authorization form identifier
  final int autorizationFormId;

  /// [types] Types of Telegram Passport elements chosen by user to complete the authorization form
  final List<PassportElementType> types;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "autorization_form_id": "$autorizationFormId",
    "types": "${types.map((i) => i.toJson()).toList()}"
  }
	""";
  }
  
  SendPassportAuthorizationForm copyWith({
    int? autorizationFormId,
    List<PassportElementType>? types,
  }) => SendPassportAuthorizationForm(
    autorizationFormId: autorizationFormId ?? this.autorizationFormId,
    types: types ?? this.types,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'sendPassportAuthorizationForm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
