part of '../tdlibjson_api.dart';

class SetLogStream extends TdFunction {
  /// Sets new log stream for internal logging of TDLib. Can be called synchronously
  const SetLogStream({
    required this.logStream,
  });

  /// [logStream] New log stream
  final LogStream logStream;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "log_stream":"${logStream.toJson()}"
}
	""";
  }

  SetLogStream copyWith({
    LogStream? logStream,
  }) =>
      SetLogStream(
        logStream: logStream ?? this.logStream,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setLogStream';

  @override
  String getConstructor() => CONSTRUCTOR;
}
