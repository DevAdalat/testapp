part of '../tdlibjson_api.dart';

class VectorPathCommand extends TdObject {

  /// Represents a vector path command
  const VectorPathCommand();
  
  /// a VectorPathCommand return type can be :
  /// * [VectorPathCommandLine]
  /// * [VectorPathCommandCubicBezierCurve]
  factory VectorPathCommand.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case VectorPathCommandLine.CONSTRUCTOR:
        return VectorPathCommandLine.fromJson(json);
      case VectorPathCommandCubicBezierCurve.CONSTRUCTOR:
        return VectorPathCommandCubicBezierCurve.fromJson(json);
      default:
        return const VectorPathCommand();
    }
  }
  
  @override
  String toJson() {
	return 
	"""
  {
  
  }
	""";
  }
  
  VectorPathCommand copyWith() => const VectorPathCommand();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'vectorPathCommand';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class VectorPathCommandLine extends VectorPathCommand {

  /// A straight line to a given point
  const VectorPathCommandLine({
    required this.endPoint,
  });
  
  /// [endPoint] The end point of the straight line
  final Point endPoint;
  
  /// Parse from a json
  factory VectorPathCommandLine.fromJson(Map<String, dynamic> json) => VectorPathCommandLine(
    endPoint: Point.fromJson(json['end_point']),
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "end_point": "${endPoint.toJson()}"
  }
	""";
  }
  
  @override
  VectorPathCommandLine copyWith({
    Point? endPoint,
  }) => VectorPathCommandLine(
    endPoint: endPoint ?? this.endPoint,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'vectorPathCommandLine';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class VectorPathCommandCubicBezierCurve extends VectorPathCommand {

  /// A cubic B
  const VectorPathCommandCubicBezierCurve();
  
  /// Parse from a json
  factory VectorPathCommandCubicBezierCurve.fromJson(Map<String, dynamic> json) => const VectorPathCommandCubicBezierCurve();
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  @override
  VectorPathCommandCubicBezierCurve copyWith() => const VectorPathCommandCubicBezierCurve();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'vectorPathCommandCubicBezierCurve';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
