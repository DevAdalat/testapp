part of '../tdlibjson_api.dart';

class GetUserFullInfo extends TdFunction {
  /// Returns full information about a user by their identifier
  const GetUserFullInfo({
    required this.userId,
  });

  /// [userId] User identifier
  final int userId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "@extra": extra,
    };
  }

  GetUserFullInfo copyWith({
    int? userId,
  }) =>
      GetUserFullInfo(
        userId: userId ?? this.userId,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getUserFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
