part of '../tdlibjson_api.dart';

class GroupCallVideoQuality extends TdObject {

  /// Describes the quality of a group call video
  const GroupCallVideoQuality();
  
  /// a GroupCallVideoQuality return type can be :
  /// * [GroupCallVideoQualityThumbnail]
  /// * [GroupCallVideoQualityMedium]
  /// * [GroupCallVideoQualityFull]
  factory GroupCallVideoQuality.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case GroupCallVideoQualityThumbnail.CONSTRUCTOR:
        return GroupCallVideoQualityThumbnail.fromJson(json);
      case GroupCallVideoQualityMedium.CONSTRUCTOR:
        return GroupCallVideoQualityMedium.fromJson(json);
      case GroupCallVideoQualityFull.CONSTRUCTOR:
        return GroupCallVideoQualityFull.fromJson(json);
      default:
        return const GroupCallVideoQuality();
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
  
  GroupCallVideoQuality copyWith() => const GroupCallVideoQuality();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'groupCallVideoQuality';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class GroupCallVideoQualityThumbnail extends GroupCallVideoQuality {

  /// The worst available video quality
  const GroupCallVideoQualityThumbnail();
  
  /// Parse from a json
  factory GroupCallVideoQualityThumbnail.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityThumbnail();
  
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
  GroupCallVideoQualityThumbnail copyWith() => const GroupCallVideoQualityThumbnail();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'groupCallVideoQualityThumbnail';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class GroupCallVideoQualityMedium extends GroupCallVideoQuality {

  /// The medium video quality
  const GroupCallVideoQualityMedium();
  
  /// Parse from a json
  factory GroupCallVideoQualityMedium.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityMedium();
  
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
  GroupCallVideoQualityMedium copyWith() => const GroupCallVideoQualityMedium();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'groupCallVideoQualityMedium';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class GroupCallVideoQualityFull extends GroupCallVideoQuality {

  /// The best available video quality
  const GroupCallVideoQualityFull();
  
  /// Parse from a json
  factory GroupCallVideoQualityFull.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityFull();
  
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
  GroupCallVideoQualityFull copyWith() => const GroupCallVideoQualityFull();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'groupCallVideoQualityFull';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
