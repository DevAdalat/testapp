part of '../tdlibjson_api.dart';

class EditChatFilter extends TdFunction {

  /// Edits existing chat filter. Returns information about the edited chat filter
  const EditChatFilter({
    required this.chatFilterId,
    required this.filter,
  });
  
  /// [chatFilterId] Chat filter identifier 
  final int chatFilterId;

  /// [filter] The edited chat filter
  final ChatFilter filter;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_filter_id":$chatFilterId,
   "filter":${filter.toJson()}
}
	""";
  }
  
  EditChatFilter copyWith({
    int? chatFilterId,
    ChatFilter? filter,
  }) => EditChatFilter(
    chatFilterId: chatFilterId ?? this.chatFilterId,
    filter: filter ?? this.filter,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'editChatFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
