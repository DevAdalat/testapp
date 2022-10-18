part of '../tdlibjson_api.dart';

class DeleteProfilePhoto extends TdFunction {

  /// Deletes a profile photo
  const DeleteProfilePhoto({
    required this.profilePhotoId,
  });
  
  /// [profilePhotoId] Identifier of the profile photo to delete
  final int profilePhotoId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "profile_photo_id": "$profilePhotoId"
  }
	""";
  }
  
  DeleteProfilePhoto copyWith({
    int? profilePhotoId,
  }) => DeleteProfilePhoto(
    profilePhotoId: profilePhotoId ?? this.profilePhotoId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteProfilePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
