part of '../tdlibjson_api.dart';

class SharePhoneNumber extends TdFunction {
  /// Shares the phone number of the current user with a mutual contact. Supposed to be called when the user clicks on chatActionBarSharePhoneNumber
  const SharePhoneNumber({
    required this.userId,
  });

  /// [userId] Identifier of the user with whom to share the phone number. The user must be a mutual contact
  final int userId;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "user_id":$userId
}
	""";
  }

  SharePhoneNumber copyWith({
    int? userId,
  }) =>
      SharePhoneNumber(
        userId: userId ?? this.userId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'sharePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}
