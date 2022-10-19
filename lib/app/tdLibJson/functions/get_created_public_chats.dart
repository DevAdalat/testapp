part of '../tdlibjson_api.dart';

class GetCreatedPublicChats extends TdFunction {
  /// Returns a list of public chats of the specified type, owned by the user
  const GetCreatedPublicChats({
    required this.type,
  });

  /// [type] Type of the public chats to return
  final PublicChatType type;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "type":"${type.toJson()}"
}
	""";
  }

  GetCreatedPublicChats copyWith({
    PublicChatType? type,
  }) =>
      GetCreatedPublicChats(
        type: type ?? this.type,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getCreatedPublicChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
