part of '../tdlibjson_api.dart';

class ToggleSupergroupJoinByRequest extends TdFunction {

  /// Toggles whether all users directly joining the supergroup need to be approved by supergroup administrators; requires can_restrict_members administrator right
  const ToggleSupergroupJoinByRequest({
    required this.supergroupId,
    required this.joinByRequest,
  });
  
  /// [supergroupId] Identifier of the channel 
  final int supergroupId;

  /// [joinByRequest] New value of join_by_request
  final bool joinByRequest;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "supergroup_id":$supergroupId,
   "join_by_request":$joinByRequest
}
	""";
  }
  
  ToggleSupergroupJoinByRequest copyWith({
    int? supergroupId,
    bool? joinByRequest,
  }) => ToggleSupergroupJoinByRequest(
    supergroupId: supergroupId ?? this.supergroupId,
    joinByRequest: joinByRequest ?? this.joinByRequest,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleSupergroupJoinByRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
