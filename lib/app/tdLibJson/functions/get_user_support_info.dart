part of '../tdlibjson_api.dart';

class GetUserSupportInfo extends TdFunction {

  /// Returns support information for the given user; for Telegram support only
  const GetUserSupportInfo({
    required this.userId,
  });
  
  /// [userId] User identifier
  final int userId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "user_id":$userId
}
	""";
  }
  
  GetUserSupportInfo copyWith({
    int? userId,
  }) => GetUserSupportInfo(
    userId: userId ?? this.userId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getUserSupportInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
