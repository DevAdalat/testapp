part of '../tdlibjson_api.dart';

class CreateCall extends TdFunction {
  /// Creates a new call
  const CreateCall({
    required this.userId,
    required this.protocol,
    required this.isVideo,
  });

  /// [userId] Identifier of the user to be called
  final int userId;

  /// [protocol] The call protocols supported by the application
  final CallProtocol protocol;

  /// [isVideo] Pass true to create a video call
  final bool isVideo;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "user_id":$userId,
   "protocol":${protocol.toJson()},
   "is_video":$isVideo
}
	""";
  }

  CreateCall copyWith({
    int? userId,
    CallProtocol? protocol,
    bool? isVideo,
  }) =>
      CreateCall(
        userId: userId ?? this.userId,
        protocol: protocol ?? this.protocol,
        isVideo: isVideo ?? this.isVideo,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'createCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
