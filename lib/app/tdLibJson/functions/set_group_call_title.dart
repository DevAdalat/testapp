part of '../tdlibjson_api.dart';

class SetGroupCallTitle extends TdFunction {

  /// Sets group call title. Requires groupCall.can_be_managed group call flag
  const SetGroupCallTitle({
    required this.groupCallId,
    required this.title,
  });
  
  /// [groupCallId] Group call identifier 
  final int groupCallId;

  /// [title] New group call title; 1-64 characters
  final String title;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "group_call_id":$groupCallId,
   "title":"$title"
}
	""";
  }
  
  SetGroupCallTitle copyWith({
    int? groupCallId,
    String? title,
  }) => SetGroupCallTitle(
    groupCallId: groupCallId ?? this.groupCallId,
    title: title ?? this.title,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setGroupCallTitle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
