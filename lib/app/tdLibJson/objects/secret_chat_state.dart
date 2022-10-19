part of '../tdlibjson_api.dart';

class SecretChatState extends TdObject {
  /// Describes the current secret chat state
  const SecretChatState();

  /// a SecretChatState return type can be :
  /// * [SecretChatStatePending]
  /// * [SecretChatStateReady]
  /// * [SecretChatStateClosed]
  factory SecretChatState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SecretChatStatePending.CONSTRUCTOR:
        return SecretChatStatePending.fromJson(json);
      case SecretChatStateReady.CONSTRUCTOR:
        return SecretChatStateReady.fromJson(json);
      case SecretChatStateClosed.CONSTRUCTOR:
        return SecretChatStateClosed.fromJson(json);
      default:
        return const SecretChatState();
    }
  }

  @override
  String toJson() {
    return """
  {
  
}
	""";
  }

  SecretChatState copyWith() => const SecretChatState();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'secretChatState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SecretChatStatePending extends SecretChatState {
  /// The secret chat is not yet created; waiting for the other user to get online
  const SecretChatStatePending();

  /// Parse from a json
  factory SecretChatStatePending.fromJson(Map<String, dynamic> json) =>
      const SecretChatStatePending();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  SecretChatStatePending copyWith() => const SecretChatStatePending();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'secretChatStatePending';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SecretChatStateReady extends SecretChatState {
  /// The secret chat is ready to use
  const SecretChatStateReady();

  /// Parse from a json
  factory SecretChatStateReady.fromJson(Map<String, dynamic> json) =>
      const SecretChatStateReady();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  SecretChatStateReady copyWith() => const SecretChatStateReady();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'secretChatStateReady';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SecretChatStateClosed extends SecretChatState {
  /// The secret chat is closed
  const SecretChatStateClosed();

  /// Parse from a json
  factory SecretChatStateClosed.fromJson(Map<String, dynamic> json) =>
      const SecretChatStateClosed();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  SecretChatStateClosed copyWith() => const SecretChatStateClosed();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'secretChatStateClosed';

  @override
  String getConstructor() => CONSTRUCTOR;
}
