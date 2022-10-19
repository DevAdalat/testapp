part of '../tdlibjson_api.dart';

class GetGroupCallStreams extends TdFunction {
  /// Returns information about available group call streams
  const GetGroupCallStreams({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "group_call_id":$groupCallId
}
	""";
  }

  GetGroupCallStreams copyWith({
    int? groupCallId,
  }) =>
      GetGroupCallStreams(
        groupCallId: groupCallId ?? this.groupCallId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getGroupCallStreams';

  @override
  String getConstructor() => CONSTRUCTOR;
}
