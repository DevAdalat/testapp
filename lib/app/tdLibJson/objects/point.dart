part of '../tdlibjson_api.dart';

class Point extends TdObject {
  /// A point on a Cartesian plane
  const Point({
    required this.x,
    required this.y,
  });

  /// [x] The point's first coordinate
  final double x;

  /// [y] The point's second coordinate
  final double y;

  /// Parse from a json
  factory Point.fromJson(Map<String, dynamic> json) => Point(
        x: json['x'],
        y: json['y'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "x":$x,
   "y":$y
}
	""";
  }

  Point copyWith({
    double? x,
    double? y,
  }) =>
      Point(
        x: x ?? this.x,
        y: y ?? this.y,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'point';

  @override
  String getConstructor() => CONSTRUCTOR;
}
