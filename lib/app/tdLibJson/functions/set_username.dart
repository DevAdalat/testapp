part of '../tdlibjson_api.dart';

class SetUsername extends TdFunction {

  /// Changes the username of the current user
  const SetUsername({
    required this.username,
  });
  
  /// [username] The new value of the username. Use an empty string to remove the username
  final String username;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "username": "$username"
  }
	""";
  }
  
  SetUsername copyWith({
    String? username,
  }) => SetUsername(
    username: username ?? this.username,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setUsername';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
