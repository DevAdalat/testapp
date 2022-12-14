part of '../tdlibjson_api.dart';

class SetAccountTtl extends TdFunction {

  /// Changes the period of inactivity after which the account of the current user will automatically be deleted
  const SetAccountTtl({
    required this.ttl,
  });
  
  /// [ttl] New account TTL
  final AccountTtl ttl;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "ttl":${ttl.toJson()}
}
	""";
  }
  
  SetAccountTtl copyWith({
    AccountTtl? ttl,
  }) => SetAccountTtl(
    ttl: ttl ?? this.ttl,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setAccountTtl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
