part of '../tdlibjson_api.dart';

class SetBio extends TdFunction {
  /// Changes the bio of the current user
  const SetBio({
    required this.bio,
  });

  /// [bio] The new value of the user bio; 0-GetOption("bio_length_max") characters without line feeds
  final String bio;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bio": bio,
      "@extra": extra,
    };
  }

  SetBio copyWith({
    String? bio,
  }) =>
      SetBio(
        bio: bio ?? this.bio,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setBio';

  @override
  String getConstructor() => CONSTRUCTOR;
}
