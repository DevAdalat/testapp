part of '../tdlibjson_api.dart';

class EndGroupCallScreenSharing extends TdFunction {

  /// Ends screen sharing in a joined group call
  const EndGroupCallScreenSharing({
    required this.groupCallId,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "group_call_id":$groupCallId
}
	""";
  }
  
  EndGroupCallScreenSharing copyWith({
    int? groupCallId,
  }) => EndGroupCallScreenSharing(
    groupCallId: groupCallId ?? this.groupCallId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'endGroupCallScreenSharing';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
