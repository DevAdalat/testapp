part of '../tdlibjson_api.dart';

class ReorderSupergroupActiveUsernames extends TdFunction {

  /// Changes order of active usernames of a supergroup or channel, requires owner privileges in the supergroup or channel
  const ReorderSupergroupActiveUsernames({
    required this.supergroupId,
    required this.usernames,
  });
  
  /// [supergroupId] Identifier of the supergroup or channel 
  final int supergroupId;

  /// [usernames] The new order of active usernames. All currently active usernames must be specified
  final List<String> usernames;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "supergroup_id":$supergroupId,
   "usernames":${usernames.map((i) => i).toList()}
}
	""";
  }
  
  ReorderSupergroupActiveUsernames copyWith({
    int? supergroupId,
    List<String>? usernames,
  }) => ReorderSupergroupActiveUsernames(
    supergroupId: supergroupId ?? this.supergroupId,
    usernames: usernames ?? this.usernames,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'reorderSupergroupActiveUsernames';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
