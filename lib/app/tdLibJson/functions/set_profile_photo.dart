part of '../tdlibjson_api.dart';

class SetProfilePhoto extends TdFunction {

  /// Changes a profile photo for the current user
  const SetProfilePhoto({
    required this.photo,
  });
  
  /// [photo] Profile photo to set
  final InputChatPhoto photo;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "photo": "${photo.toJson()}"
  }
	""";
  }
  
  SetProfilePhoto copyWith({
    InputChatPhoto? photo,
  }) => SetProfilePhoto(
    photo: photo ?? this.photo,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setProfilePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
