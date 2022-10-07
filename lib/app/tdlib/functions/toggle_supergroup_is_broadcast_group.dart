part of '../tdlibjson.dart';

class ToggleSupergroupIsBroadcastGroup extends TdFunction {

  /// Upgrades supergroup to a broadcast group; requires owner privileges in the supergroup
  const ToggleSupergroupIsBroadcastGroup({
    required this.supergroupId,
  });
  
  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "@extra": extra,
    };
  }
  
  ToggleSupergroupIsBroadcastGroup copyWith({
    int? supergroupId,
  }) => ToggleSupergroupIsBroadcastGroup(
    supergroupId: supergroupId ?? this.supergroupId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleSupergroupIsBroadcastGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
