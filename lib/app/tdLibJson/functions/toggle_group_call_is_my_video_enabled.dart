part of '../tdlibjson_api.dart';

class ToggleGroupCallIsMyVideoEnabled extends TdFunction {

  /// Toggles whether current user's video is enabled
  const ToggleGroupCallIsMyVideoEnabled({
    required this.groupCallId,
    required this.isMyVideoEnabled,
  });
  
  /// [groupCallId] Group call identifier 
  final int groupCallId;

  /// [isMyVideoEnabled] Pass true if the current user's video is enabled
  final bool isMyVideoEnabled;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "group_call_id": "$groupCallId",
    "is_my_video_enabled": $isMyVideoEnabled
  }
	""";
  }
  
  ToggleGroupCallIsMyVideoEnabled copyWith({
    int? groupCallId,
    bool? isMyVideoEnabled,
  }) => ToggleGroupCallIsMyVideoEnabled(
    groupCallId: groupCallId ?? this.groupCallId,
    isMyVideoEnabled: isMyVideoEnabled ?? this.isMyVideoEnabled,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleGroupCallIsMyVideoEnabled';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
