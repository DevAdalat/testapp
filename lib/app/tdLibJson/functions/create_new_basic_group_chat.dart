part of '../tdlibjson_api.dart';

class CreateNewBasicGroupChat extends TdFunction {

  /// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat
  const CreateNewBasicGroupChat({
    required this.userIds,
    required this.title,
  });
  
  /// [userIds] Identifiers of users to be added to the basic group 
  final List<int> userIds;

  /// [title] Title of the new basic group; 1-128 characters
  final String title;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "user_ids":${userIds.map((i) => i).toList()},
   "title":"$title"
}
	""";
  }
  
  CreateNewBasicGroupChat copyWith({
    List<int>? userIds,
    String? title,
  }) => CreateNewBasicGroupChat(
    userIds: userIds ?? this.userIds,
    title: title ?? this.title,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'createNewBasicGroupChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
