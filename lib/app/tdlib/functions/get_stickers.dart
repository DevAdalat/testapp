part of '../tdlibjson.dart';

class GetStickers extends TdFunction {

  /// Returns stickers from the installed sticker sets that correspond to a given emoji. If the emoji is non-empty, then favorite, recently used or trending stickers may also be returned
  const GetStickers({
    required this.stickerType,
    required this.emoji,
    required this.limit,
    required this.chatId,
  });
  
  /// [stickerType] Type of the sticker sets to return
  final StickerType stickerType;

  /// [emoji] String representation of emoji. If empty, returns all known installed stickers
  final String emoji;

  /// [limit] The maximum number of stickers to be returned
  final int limit;

  /// [chatId] Chat identifier for which to return stickers. Available custom emoji may be different for different chats
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_type": stickerType.toJson(),
      "emoji": emoji,
      "limit": limit,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  GetStickers copyWith({
    StickerType? stickerType,
    String? emoji,
    int? limit,
    int? chatId,
  }) => GetStickers(
    stickerType: stickerType ?? this.stickerType,
    emoji: emoji ?? this.emoji,
    limit: limit ?? this.limit,
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
