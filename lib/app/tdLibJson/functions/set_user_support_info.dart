part of '../tdlibjson_api.dart';

class SetUserSupportInfo extends TdFunction {
  /// Sets support information for the given user; for Telegram support only
  const SetUserSupportInfo({
    required this.userId,
    required this.message,
  });

  /// [userId] User identifier
  final int userId;

  /// [message] New information message
  final FormattedText message;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "user_id":$userId,
   "message":"${message.toJson()}"
}
	""";
  }

  SetUserSupportInfo copyWith({
    int? userId,
    FormattedText? message,
  }) =>
      SetUserSupportInfo(
        userId: userId ?? this.userId,
        message: message ?? this.message,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setUserSupportInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
