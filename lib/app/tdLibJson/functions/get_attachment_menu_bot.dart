part of '../tdlibjson_api.dart';

class GetAttachmentMenuBot extends TdFunction {

  /// Returns information about a bot that can be added to attachment menu
  const GetAttachmentMenuBot({
    required this.botUserId,
  });
  
  /// [botUserId] Bot's user identifier
  final int botUserId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "bot_user_id":$botUserId
}
	""";
  }
  
  GetAttachmentMenuBot copyWith({
    int? botUserId,
  }) => GetAttachmentMenuBot(
    botUserId: botUserId ?? this.botUserId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getAttachmentMenuBot';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
