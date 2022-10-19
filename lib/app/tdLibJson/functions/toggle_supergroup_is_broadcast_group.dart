part of '../tdlibjson_api.dart';

class ToggleSupergroupIsBroadcastGroup extends TdFunction {
  /// Upgrades supergroup to a broadcast group; requires owner privileges in the supergroup
  const ToggleSupergroupIsBroadcastGroup({
    required this.supergroupId,
  });

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "supergroup_id":$supergroupId
}
	""";
  }

  ToggleSupergroupIsBroadcastGroup copyWith({
    int? supergroupId,
  }) =>
      ToggleSupergroupIsBroadcastGroup(
        supergroupId: supergroupId ?? this.supergroupId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleSupergroupIsBroadcastGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
