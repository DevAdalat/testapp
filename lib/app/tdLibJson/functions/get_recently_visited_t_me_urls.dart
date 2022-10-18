part of '../tdlibjson_api.dart';

class GetRecentlyVisitedTMeUrls extends TdFunction {

  /// Returns t.me URLs recently visited by a newly registered user
  const GetRecentlyVisitedTMeUrls({
    required this.referrer,
  });
  
  /// [referrer] Google Play referrer to identify the user
  final String referrer;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "referrer": "$referrer"
  }
	""";
  }
  
  GetRecentlyVisitedTMeUrls copyWith({
    String? referrer,
  }) => GetRecentlyVisitedTMeUrls(
    referrer: referrer ?? this.referrer,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getRecentlyVisitedTMeUrls';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
