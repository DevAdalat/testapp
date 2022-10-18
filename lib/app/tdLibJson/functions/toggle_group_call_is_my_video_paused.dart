part of '../tdlibjson_api.dart';

class ToggleGroupCallIsMyVideoPaused extends TdFunction {

  /// Toggles whether current user's video is paused
  const ToggleGroupCallIsMyVideoPaused({
    required this.groupCallId,
    required this.isMyVideoPaused,
  });
  
  /// [groupCallId] Group call identifier 
  final int groupCallId;

  /// [isMyVideoPaused] Pass true if the current user's video is paused
  final bool isMyVideoPaused;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "group_call_id": "$groupCallId",
    "is_my_video_paused": $isMyVideoPaused
  }
	""";
  }
  
  ToggleGroupCallIsMyVideoPaused copyWith({
    int? groupCallId,
    bool? isMyVideoPaused,
  }) => ToggleGroupCallIsMyVideoPaused(
    groupCallId: groupCallId ?? this.groupCallId,
    isMyVideoPaused: isMyVideoPaused ?? this.isMyVideoPaused,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleGroupCallIsMyVideoPaused';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
