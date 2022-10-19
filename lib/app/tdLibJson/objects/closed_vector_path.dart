part of '../tdlibjson_api.dart';

class ClosedVectorPath extends TdObject {
  /// Represents a closed vector path. The path begins at the end point of the last command
  const ClosedVectorPath({
    required this.commands,
  });

  /// [commands] List of vector path commands
  final List<VectorPathCommand> commands;

  /// Parse from a json
  factory ClosedVectorPath.fromJson(Map<String, dynamic> json) =>
      ClosedVectorPath(
        commands: List<VectorPathCommand>.from((json['commands'] ?? [])
            .map((item) => VectorPathCommand.fromJson(item))
            .toList()),
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "commands":"${commands.map((i) => i.toJson()).toList()}"
}
	""";
  }

  ClosedVectorPath copyWith({
    List<VectorPathCommand>? commands,
  }) =>
      ClosedVectorPath(
        commands: commands ?? this.commands,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'closedVectorPath';

  @override
  String getConstructor() => CONSTRUCTOR;
}
