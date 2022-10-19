part of '../tdlibjson_api.dart';

class PublicChatType extends TdObject {
  /// Describes a type of public chats
  const PublicChatType();

  /// a PublicChatType return type can be :
  /// * [PublicChatTypeHasUsername]
  /// * [PublicChatTypeIsLocationBased]
  factory PublicChatType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PublicChatTypeHasUsername.CONSTRUCTOR:
        return PublicChatTypeHasUsername.fromJson(json);
      case PublicChatTypeIsLocationBased.CONSTRUCTOR:
        return PublicChatTypeIsLocationBased.fromJson(json);
      default:
        return const PublicChatType();
    }
  }

  @override
  String toJson() {
    return """
  {
  
}
	""";
  }

  PublicChatType copyWith() => const PublicChatType();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'publicChatType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PublicChatTypeHasUsername extends PublicChatType {
  /// The chat is public, because it has username
  const PublicChatTypeHasUsername();

  /// Parse from a json
  factory PublicChatTypeHasUsername.fromJson(Map<String, dynamic> json) =>
      const PublicChatTypeHasUsername();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  PublicChatTypeHasUsername copyWith() => const PublicChatTypeHasUsername();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'publicChatTypeHasUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PublicChatTypeIsLocationBased extends PublicChatType {
  /// The chat is public, because it is a location-based supergroup
  const PublicChatTypeIsLocationBased();

  /// Parse from a json
  factory PublicChatTypeIsLocationBased.fromJson(Map<String, dynamic> json) =>
      const PublicChatTypeIsLocationBased();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  PublicChatTypeIsLocationBased copyWith() =>
      const PublicChatTypeIsLocationBased();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'publicChatTypeIsLocationBased';

  @override
  String getConstructor() => CONSTRUCTOR;
}
