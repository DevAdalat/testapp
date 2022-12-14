part of '../tdlibjson_api.dart';

class CallProblem extends TdObject {

  /// Describes the exact type of a problem with a call
  const CallProblem();
  
  /// a CallProblem return type can be :
  /// * [CallProblemEcho]
  /// * [CallProblemNoise]
  /// * [CallProblemInterruptions]
  /// * [CallProblemDistortedSpeech]
  /// * [CallProblemSilentLocal]
  /// * [CallProblemSilentRemote]
  /// * [CallProblemDropped]
  /// * [CallProblemDistortedVideo]
  /// * [CallProblemPixelatedVideo]
  factory CallProblem.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallProblemEcho.CONSTRUCTOR:
        return CallProblemEcho.fromJson(json);
      case CallProblemNoise.CONSTRUCTOR:
        return CallProblemNoise.fromJson(json);
      case CallProblemInterruptions.CONSTRUCTOR:
        return CallProblemInterruptions.fromJson(json);
      case CallProblemDistortedSpeech.CONSTRUCTOR:
        return CallProblemDistortedSpeech.fromJson(json);
      case CallProblemSilentLocal.CONSTRUCTOR:
        return CallProblemSilentLocal.fromJson(json);
      case CallProblemSilentRemote.CONSTRUCTOR:
        return CallProblemSilentRemote.fromJson(json);
      case CallProblemDropped.CONSTRUCTOR:
        return CallProblemDropped.fromJson(json);
      case CallProblemDistortedVideo.CONSTRUCTOR:
        return CallProblemDistortedVideo.fromJson(json);
      case CallProblemPixelatedVideo.CONSTRUCTOR:
        return CallProblemPixelatedVideo.fromJson(json);
      default:
        return const CallProblem();
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
  
  CallProblem copyWith() => const CallProblem();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callProblem';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemEcho extends CallProblem {

  /// The user heard their own voice
  const CallProblemEcho();
  
  /// Parse from a json
  factory CallProblemEcho.fromJson(Map<String, dynamic> json) => const CallProblemEcho();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  CallProblemEcho copyWith() => const CallProblemEcho();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callProblemEcho';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemNoise extends CallProblem {

  /// The user heard background noise
  const CallProblemNoise();
  
  /// Parse from a json
  factory CallProblemNoise.fromJson(Map<String, dynamic> json) => const CallProblemNoise();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  CallProblemNoise copyWith() => const CallProblemNoise();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callProblemNoise';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemInterruptions extends CallProblem {

  /// The other side kept disappearing
  const CallProblemInterruptions();
  
  /// Parse from a json
  factory CallProblemInterruptions.fromJson(Map<String, dynamic> json) => const CallProblemInterruptions();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  CallProblemInterruptions copyWith() => const CallProblemInterruptions();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callProblemInterruptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemDistortedSpeech extends CallProblem {

  /// The speech was distorted
  const CallProblemDistortedSpeech();
  
  /// Parse from a json
  factory CallProblemDistortedSpeech.fromJson(Map<String, dynamic> json) => const CallProblemDistortedSpeech();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  CallProblemDistortedSpeech copyWith() => const CallProblemDistortedSpeech();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callProblemDistortedSpeech';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemSilentLocal extends CallProblem {

  /// The user couldn't hear the other side
  const CallProblemSilentLocal();
  
  /// Parse from a json
  factory CallProblemSilentLocal.fromJson(Map<String, dynamic> json) => const CallProblemSilentLocal();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  CallProblemSilentLocal copyWith() => const CallProblemSilentLocal();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callProblemSilentLocal';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemSilentRemote extends CallProblem {

  /// The other side couldn't hear the user
  const CallProblemSilentRemote();
  
  /// Parse from a json
  factory CallProblemSilentRemote.fromJson(Map<String, dynamic> json) => const CallProblemSilentRemote();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  CallProblemSilentRemote copyWith() => const CallProblemSilentRemote();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callProblemSilentRemote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemDropped extends CallProblem {

  /// The call ended unexpectedly
  const CallProblemDropped();
  
  /// Parse from a json
  factory CallProblemDropped.fromJson(Map<String, dynamic> json) => const CallProblemDropped();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  CallProblemDropped copyWith() => const CallProblemDropped();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callProblemDropped';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemDistortedVideo extends CallProblem {

  /// The video was distorted
  const CallProblemDistortedVideo();
  
  /// Parse from a json
  factory CallProblemDistortedVideo.fromJson(Map<String, dynamic> json) => const CallProblemDistortedVideo();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  CallProblemDistortedVideo copyWith() => const CallProblemDistortedVideo();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callProblemDistortedVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemPixelatedVideo extends CallProblem {

  /// The video was pixelated
  const CallProblemPixelatedVideo();
  
  /// Parse from a json
  factory CallProblemPixelatedVideo.fromJson(Map<String, dynamic> json) => const CallProblemPixelatedVideo();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  CallProblemPixelatedVideo copyWith() => const CallProblemPixelatedVideo();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callProblemPixelatedVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
