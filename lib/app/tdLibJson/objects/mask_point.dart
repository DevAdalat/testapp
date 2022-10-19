part of '../tdlibjson_api.dart';

class MaskPoint extends TdObject {
  /// Part of the face, relative to which a mask is placed
  const MaskPoint();

  /// a MaskPoint return type can be :
  /// * [MaskPointForehead]
  /// * [MaskPointEyes]
  /// * [MaskPointMouth]
  /// * [MaskPointChin]
  factory MaskPoint.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MaskPointForehead.CONSTRUCTOR:
        return MaskPointForehead.fromJson(json);
      case MaskPointEyes.CONSTRUCTOR:
        return MaskPointEyes.fromJson(json);
      case MaskPointMouth.CONSTRUCTOR:
        return MaskPointMouth.fromJson(json);
      case MaskPointChin.CONSTRUCTOR:
        return MaskPointChin.fromJson(json);
      default:
        return const MaskPoint();
    }
  }

  @override
  String toJson() {
    return """
  {
  
}
	""";
  }

  MaskPoint copyWith() => const MaskPoint();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'maskPoint';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MaskPointForehead extends MaskPoint {
  /// The mask is placed relatively to the forehead
  const MaskPointForehead();

  /// Parse from a json
  factory MaskPointForehead.fromJson(Map<String, dynamic> json) =>
      const MaskPointForehead();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  MaskPointForehead copyWith() => const MaskPointForehead();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'maskPointForehead';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MaskPointEyes extends MaskPoint {
  /// The mask is placed relatively to the eyes
  const MaskPointEyes();

  /// Parse from a json
  factory MaskPointEyes.fromJson(Map<String, dynamic> json) =>
      const MaskPointEyes();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  MaskPointEyes copyWith() => const MaskPointEyes();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'maskPointEyes';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MaskPointMouth extends MaskPoint {
  /// The mask is placed relatively to the mouth
  const MaskPointMouth();

  /// Parse from a json
  factory MaskPointMouth.fromJson(Map<String, dynamic> json) =>
      const MaskPointMouth();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  MaskPointMouth copyWith() => const MaskPointMouth();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'maskPointMouth';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MaskPointChin extends MaskPoint {
  /// The mask is placed relatively to the chin
  const MaskPointChin();

  /// Parse from a json
  factory MaskPointChin.fromJson(Map<String, dynamic> json) =>
      const MaskPointChin();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  MaskPointChin copyWith() => const MaskPointChin();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'maskPointChin';

  @override
  String getConstructor() => CONSTRUCTOR;
}
