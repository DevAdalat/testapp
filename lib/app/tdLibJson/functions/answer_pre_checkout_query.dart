part of '../tdlibjson_api.dart';

class AnswerPreCheckoutQuery extends TdFunction {

  /// Sets the result of a pre-checkout query; for bots only
  const AnswerPreCheckoutQuery({
    required this.preCheckoutQueryId,
    required this.errorMessage,
  });
  
  /// [preCheckoutQueryId] Identifier of the pre-checkout query 
  final int preCheckoutQueryId;

  /// [errorMessage] An error message, empty on success
  final String errorMessage;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "pre_checkout_query_id": "$preCheckoutQueryId",
    "error_message": "$errorMessage"
  }
	""";
  }
  
  AnswerPreCheckoutQuery copyWith({
    int? preCheckoutQueryId,
    String? errorMessage,
  }) => AnswerPreCheckoutQuery(
    preCheckoutQueryId: preCheckoutQueryId ?? this.preCheckoutQueryId,
    errorMessage: errorMessage ?? this.errorMessage,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'answerPreCheckoutQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
