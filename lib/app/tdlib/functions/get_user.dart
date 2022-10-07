part of '../tdlibjson.dart';

class GetUser extends TdFunction {

  /// Returns information about a user by their identifier. This is an offline request if the current user is not a bot
  const GetUser({
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
  
  GetUser copyWith({
    int? userId,
  }) => GetUser(
    userId: userId ?? this.userId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
