part of '../tdlibjson_api.dart';

class RequestQrCodeAuthentication extends TdFunction {

  /// Requests QR code authentication by scanning a QR code on another logged in device. Works only when the current authorization state is authorizationStateWaitPhoneNumber,. or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
  const RequestQrCodeAuthentication({
    required this.otherUserIds,
  });
  
  /// [otherUserIds] List of user identifiers of other users currently using the application
  final List<int> otherUserIds;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "other_user_ids":${otherUserIds.map((i) => i).toList()}
}
	""";
  }
  
  RequestQrCodeAuthentication copyWith({
    List<int>? otherUserIds,
  }) => RequestQrCodeAuthentication(
    otherUserIds: otherUserIds ?? this.otherUserIds,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'requestQrCodeAuthentication';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
