part of '../tdlibjson_api.dart';

class DeleteChatFilter extends TdFunction {

  /// Deletes existing chat filter
  const DeleteChatFilter({
    required this.chatFilterId,
  });
  
  /// [chatFilterId] Chat filter identifier
  final int chatFilterId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_filter_id": "$chatFilterId"
  }
	""";
  }
  
  DeleteChatFilter copyWith({
    int? chatFilterId,
  }) => DeleteChatFilter(
    chatFilterId: chatFilterId ?? this.chatFilterId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteChatFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
