part of '../tdlibjson_api.dart';

class RecoveryEmailAddress extends TdObject {

  /// Contains information about the current recovery email address
  const RecoveryEmailAddress({
    required this.recoveryEmailAddress,
    this.extra,
    this.clientId,
  });
  
  /// [recoveryEmailAddress] Recovery email address
  final String recoveryEmailAddress;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory RecoveryEmailAddress.fromJson(Map<String, dynamic> json) => RecoveryEmailAddress(
    recoveryEmailAddress: json['recovery_email_address'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "recovery_email_address":"$recoveryEmailAddress"
}
	""";
  }
  
  RecoveryEmailAddress copyWith({
    String? recoveryEmailAddress,
    dynamic extra,
    int? clientId,
  }) => RecoveryEmailAddress(
    recoveryEmailAddress: recoveryEmailAddress ?? this.recoveryEmailAddress,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'recoveryEmailAddress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
