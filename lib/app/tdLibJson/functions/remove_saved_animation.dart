part of '../tdlibjson_api.dart';

class RemoveSavedAnimation extends TdFunction {
  /// Removes an animation from the list of saved animations
  const RemoveSavedAnimation({
    required this.animation,
  });

  /// [animation] Animation file to be removed
  final InputFile animation;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "animation":${animation.toJson()}
}
	""";
  }

  RemoveSavedAnimation copyWith({
    InputFile? animation,
  }) =>
      RemoveSavedAnimation(
        animation: animation ?? this.animation,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeSavedAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
