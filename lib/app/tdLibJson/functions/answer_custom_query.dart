part of '../tdlibjson_api.dart';

class AnswerCustomQuery extends TdFunction {

  /// Answers a custom query; for bots only
  const AnswerCustomQuery({
    required this.customQueryId,
    required this.data,
  });
  
  /// [customQueryId] Identifier of a custom query 
  final int customQueryId;

  /// [data] JSON-serialized answer to the query
  final String data;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "custom_query_id":$customQueryId,
   "data":"$data"
}
	""";
  }
  
  AnswerCustomQuery copyWith({
    int? customQueryId,
    String? data,
  }) => AnswerCustomQuery(
    customQueryId: customQueryId ?? this.customQueryId,
    data: data ?? this.data,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'answerCustomQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
