part of '../tdlibjson_api.dart';

class AnswerShippingQuery extends TdFunction {

  /// Sets the result of a shipping query; for bots only
  const AnswerShippingQuery({
    required this.shippingQueryId,
    required this.shippingOptions,
    required this.errorMessage,
  });
  
  /// [shippingQueryId] Identifier of the shipping query 
  final int shippingQueryId;

  /// [shippingOptions] Available shipping options 
  final List<ShippingOption> shippingOptions;

  /// [errorMessage] An error message, empty on success
  final String errorMessage;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "shipping_query_id":$shippingQueryId,
   "shipping_options":${shippingOptions.map((i) => i.toJson()).toList()},
   "error_message":"$errorMessage"
}
	""";
  }
  
  AnswerShippingQuery copyWith({
    int? shippingQueryId,
    List<ShippingOption>? shippingOptions,
    String? errorMessage,
  }) => AnswerShippingQuery(
    shippingQueryId: shippingQueryId ?? this.shippingQueryId,
    shippingOptions: shippingOptions ?? this.shippingOptions,
    errorMessage: errorMessage ?? this.errorMessage,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'answerShippingQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
