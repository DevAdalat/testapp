part of '../tdlibjson_api.dart';

class DisableAllSupergroupUsernames extends TdFunction {

  /// Disables all active non-editable usernames of a supergroup or channel, requires owner privileges in the supergroup or channel
  const DisableAllSupergroupUsernames({
    required this.supergroupId,
  });
  
  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "supergroup_id":$supergroupId
}
	""";
  }
  
  DisableAllSupergroupUsernames copyWith({
    int? supergroupId,
  }) => DisableAllSupergroupUsernames(
    supergroupId: supergroupId ?? this.supergroupId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'disableAllSupergroupUsernames';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
