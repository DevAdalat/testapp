part of '../tdlibjson_api.dart';

class InputBackground extends TdObject {

  /// Contains information about background to set
  const InputBackground();
  
  /// a InputBackground return type can be :
  /// * [InputBackgroundLocal]
  /// * [InputBackgroundRemote]
  factory InputBackground.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputBackgroundLocal.CONSTRUCTOR:
        return InputBackgroundLocal.fromJson(json);
      case InputBackgroundRemote.CONSTRUCTOR:
        return InputBackgroundRemote.fromJson(json);
      default:
        return const InputBackground();
    }
  }
  
  @override
  String toJson() {
	return 
	"""
  {
  
}
	""";
  }
  
  InputBackground copyWith() => const InputBackground();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'inputBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputBackgroundLocal extends InputBackground {

  /// A background from a local file
  const InputBackgroundLocal({
    required this.background,
  });
  
  /// [background] Background file to use. Only inputFileLocal and inputFileGenerated are supported. The file must be in JPEG format for wallpapers and in PNG format for patterns
  final InputFile background;
  
  /// Parse from a json
  factory InputBackgroundLocal.fromJson(Map<String, dynamic> json) => InputBackgroundLocal(
    background: InputFile.fromJson(json['background']),
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "background":${background.toJson()}
}
	""";
  }
  
  @override
  InputBackgroundLocal copyWith({
    InputFile? background,
  }) => InputBackgroundLocal(
    background: background ?? this.background,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'inputBackgroundLocal';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputBackgroundRemote extends InputBackground {

  /// A background from the server
  const InputBackgroundRemote({
    required this.backgroundId,
  });
  
  /// [backgroundId] The background identifier
  final int backgroundId;
  
  /// Parse from a json
  factory InputBackgroundRemote.fromJson(Map<String, dynamic> json) => InputBackgroundRemote(
    backgroundId: int.parse(json['background_id']),
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "background_id":$backgroundId
}
	""";
  }
  
  @override
  InputBackgroundRemote copyWith({
    int? backgroundId,
  }) => InputBackgroundRemote(
    backgroundId: backgroundId ?? this.backgroundId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'inputBackgroundRemote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
