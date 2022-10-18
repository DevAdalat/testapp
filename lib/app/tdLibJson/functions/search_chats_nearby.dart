part of '../tdlibjson_api.dart';

class SearchChatsNearby extends TdFunction {

  /// Returns a list of users and location-based supergroups nearby. The list of users nearby will be updated for 60 seconds after the request by the updates updateUsersNearby. The request must be sent again every 25 seconds with adjusted location to not miss new chats
  const SearchChatsNearby({
    required this.location,
  });
  
  /// [location] Current user location
  final Location location;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "location": "${location.toJson()}"
  }
	""";
  }
  
  SearchChatsNearby copyWith({
    Location? location,
  }) => SearchChatsNearby(
    location: location ?? this.location,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchChatsNearby';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
