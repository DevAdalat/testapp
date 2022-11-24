part of '../tdlibjson_api.dart';

class SetAlarm extends TdFunction {

  /// Succeeds after a specified amount of time has passed. Can be called before initialization
  const SetAlarm({
    required this.seconds,
  });
  
  /// [seconds] Number of seconds before the function returns
  final double seconds;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "seconds":$seconds
}
	""";
  }
  
  SetAlarm copyWith({
    double? seconds,
  }) => SetAlarm(
    seconds: seconds ?? this.seconds,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setAlarm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
