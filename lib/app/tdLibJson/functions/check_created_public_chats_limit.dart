part of '../tdlibjson_api.dart';

class CheckCreatedPublicChatsLimit extends TdFunction {
  /// Checks whether the maximum number of owned public chats has been reached. Returns corresponding error if the limit was reached. The limit can be increased with Telegram Premium
  const CheckCreatedPublicChatsLimit({
    required this.type,
  });

  /// [type] Type of the public chats, for which to check the limit
  final PublicChatType type;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "@extra": extra,
    };
  }

  CheckCreatedPublicChatsLimit copyWith({
    PublicChatType? type,
  }) =>
      CheckCreatedPublicChatsLimit(
        type: type ?? this.type,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkCreatedPublicChatsLimit';

  @override
  String getConstructor() => CONSTRUCTOR;
}
