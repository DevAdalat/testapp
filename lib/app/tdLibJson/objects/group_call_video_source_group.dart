part of '../tdlibjson_api.dart';

class GroupCallVideoSourceGroup extends TdObject {

  /// Describes a group of video synchronization source identifiers
  const GroupCallVideoSourceGroup({
    required this.semantics,
    required this.sourceIds,
  });
  
  /// [semantics] The semantics of sources, one of "SIM" or "FgroupCallVideoSourceGroup" 
  final String semantics;

  /// [sourceIds] The list of synchronization source identifiers
  final List<int> sourceIds;
  
  /// Parse from a json
  factory GroupCallVideoSourceGroup.fromJson(Map<String, dynamic> json) => GroupCallVideoSourceGroup(
    semantics: json['semantics'],
    sourceIds: List<int>.from((json['source_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "semantics":"$semantics",
   "source_ids":${sourceIds.map((i) => i).toList()}
}
	""";
  }
  
  GroupCallVideoSourceGroup copyWith({
    String? semantics,
    List<int>? sourceIds,
  }) => GroupCallVideoSourceGroup(
    semantics: semantics ?? this.semantics,
    sourceIds: sourceIds ?? this.sourceIds,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'groupCallVideoSourceGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
