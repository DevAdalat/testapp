part of '../tdlibjson_api.dart';

class ChatLocation extends TdObject {

  /// Represents a location to which a chat is connected
  const ChatLocation({
    required this.location,
    required this.address,
  });
  
  /// [location] The location 
  final Location location;

  /// [address] Location address; 1-64 characters, as defined by the chat owner
  final String address;
  
  /// Parse from a json
  factory ChatLocation.fromJson(Map<String, dynamic> json) => ChatLocation(
    location: Location.fromJson(json['location']),
    address: json['address'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "location":${location.toJson()},
   "address":"$address"
}
	""";
  }
  
  ChatLocation copyWith({
    Location? location,
    String? address,
  }) => ChatLocation(
    location: location ?? this.location,
    address: address ?? this.address,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
