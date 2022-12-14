part of '../tdlibjson_api.dart';

class PremiumFeaturePromotionAnimation extends TdObject {

  /// Describes a promotion animation for a Premium feature
  const PremiumFeaturePromotionAnimation({
    required this.feature,
    required this.animation,
  });
  
  /// [feature] Premium feature 
  final PremiumFeature feature;

  /// [animation] Promotion animation for the feature
  final Animation animation;
  
  /// Parse from a json
  factory PremiumFeaturePromotionAnimation.fromJson(Map<String, dynamic> json) => PremiumFeaturePromotionAnimation(
    feature: PremiumFeature.fromJson(json['feature']),
    animation: Animation.fromJson(json['animation']),
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "feature":${feature.toJson()},
   "animation":${animation.toJson()}
}
	""";
  }
  
  PremiumFeaturePromotionAnimation copyWith({
    PremiumFeature? feature,
    Animation? animation,
  }) => PremiumFeaturePromotionAnimation(
    feature: feature ?? this.feature,
    animation: animation ?? this.animation,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'premiumFeaturePromotionAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
