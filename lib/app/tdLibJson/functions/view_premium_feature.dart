part of '../tdlibjson_api.dart';

class ViewPremiumFeature extends TdFunction {

  /// Informs TDLib that the user viewed detailed information about a Premium feature on the Premium features screen
  const ViewPremiumFeature({
    required this.feature,
  });
  
  /// [feature] The viewed premium feature
  final PremiumFeature feature;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "feature":${feature.toJson()}
}
	""";
  }
  
  ViewPremiumFeature copyWith({
    PremiumFeature? feature,
  }) => ViewPremiumFeature(
    feature: feature ?? this.feature,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'viewPremiumFeature';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
