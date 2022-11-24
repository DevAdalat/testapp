part of '../tdlibjson_api.dart';

class AcceptTermsOfService extends TdFunction {

  /// Accepts Telegram terms of services
  const AcceptTermsOfService({
    required this.termsOfServiceId,
  });
  
  /// [termsOfServiceId] Terms of service identifier
  final String termsOfServiceId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "terms_of_service_id":"$termsOfServiceId"
}
	""";
  }
  
  AcceptTermsOfService copyWith({
    String? termsOfServiceId,
  }) => AcceptTermsOfService(
    termsOfServiceId: termsOfServiceId ?? this.termsOfServiceId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'acceptTermsOfService';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
