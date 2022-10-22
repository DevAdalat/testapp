part of '../tdlibjson_api.dart';

class ReportSupergroupSpam extends TdFunction {
  /// Reports messages in a supergroup as spam; requires administrator rights in the supergroup
  const ReportSupergroupSpam({
    required this.supergroupId,
    required this.messageIds,
  });

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  /// [messageIds] Identifiers of messages to report
  final List<int> messageIds;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "supergroup_id":$supergroupId,
   "message_ids":${messageIds.map((i) => i).toList()}
}
	""";
  }

  ReportSupergroupSpam copyWith({
    int? supergroupId,
    List<int>? messageIds,
  }) =>
      ReportSupergroupSpam(
        supergroupId: supergroupId ?? this.supergroupId,
        messageIds: messageIds ?? this.messageIds,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'reportSupergroupSpam';

  @override
  String getConstructor() => CONSTRUCTOR;
}
