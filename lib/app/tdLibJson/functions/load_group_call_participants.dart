part of '../tdlibjson_api.dart';

class LoadGroupCallParticipants extends TdFunction {

  /// Loads more participants of a group call. The loaded participants will be received through updates. Use the field groupCall.loaded_all_participants to check whether all participants have already been loaded
  const LoadGroupCallParticipants({
    required this.groupCallId,
    required this.limit,
  });
  
  /// [groupCallId] Group call identifier. The group call must be previously received through getGroupCall and must be joined or being joined
  final int groupCallId;

  /// [limit] The maximum number of participants to load; up to 100
  final int limit;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "group_call_id":$groupCallId,
   "limit":$limit
}
	""";
  }
  
  LoadGroupCallParticipants copyWith({
    int? groupCallId,
    int? limit,
  }) => LoadGroupCallParticipants(
    groupCallId: groupCallId ?? this.groupCallId,
    limit: limit ?? this.limit,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'loadGroupCallParticipants';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
