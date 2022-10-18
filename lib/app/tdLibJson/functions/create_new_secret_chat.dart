part of '../tdlibjson_api.dart';

class CreateNewSecretChat extends TdFunction {

  /// Creates a new secret chat. Returns the newly created chat
  const CreateNewSecretChat({
    required this.userId,
  });
  
  /// [userId] Identifier of the target user
  final int userId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "user_id": "$userId"
  }
	""";
  }
  
  CreateNewSecretChat copyWith({
    int? userId,
  }) => CreateNewSecretChat(
    userId: userId ?? this.userId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'createNewSecretChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
