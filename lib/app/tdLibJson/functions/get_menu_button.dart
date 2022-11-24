part of '../tdlibjson_api.dart';

class GetMenuButton extends TdFunction {

  /// Returns menu button set by the bot for the given user; for bots only
  const GetMenuButton({
    required this.userId,
  });
  
  /// [userId] Identifier of the user or 0 to get the default menu button
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
  
  GetMenuButton copyWith({
    int? userId,
  }) => GetMenuButton(
    userId: userId ?? this.userId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getMenuButton';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
