part of '../tdlibjson_api.dart';

class ClearAllDraftMessages extends TdFunction {
  /// Clears message drafts in all chats
  const ClearAllDraftMessages({
    required this.excludeSecretChats,
  });

  /// [excludeSecretChats] Pass true to keep local message drafts in secret chats
  final bool excludeSecretChats;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "exclude_secret_chats":$excludeSecretChats
}
	""";
  }

  ClearAllDraftMessages copyWith({
    bool? excludeSecretChats,
  }) =>
      ClearAllDraftMessages(
        excludeSecretChats: excludeSecretChats ?? this.excludeSecretChats,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'clearAllDraftMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
