part of '../tdlibjson_api.dart';

class GetStatisticalGraph extends TdFunction {

  /// Loads an asynchronous or a zoomed in statistical graph
  const GetStatisticalGraph({
    required this.chatId,
    required this.token,
    required this.x,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [token] The token for graph loading 
  final String token;

  /// [x] X-value for zoomed in graph or 0 otherwise
  final int x;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "token":"$token",
   "x":$x
}
	""";
  }
  
  GetStatisticalGraph copyWith({
    int? chatId,
    String? token,
    int? x,
  }) => GetStatisticalGraph(
    chatId: chatId ?? this.chatId,
    token: token ?? this.token,
    x: x ?? this.x,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getStatisticalGraph';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
