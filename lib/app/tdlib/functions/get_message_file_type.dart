part of '../tdlibjson.dart';

class GetMessageFileType extends TdFunction {

  /// Returns information about a file with messages exported from another application
  const GetMessageFileType({
    required this.messageFileHead,
  });
  
  /// [messageFileHead] Beginning of the message file; up to 100 first lines
  final String messageFileHead;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_file_head": messageFileHead,
      "@extra": extra,
    };
  }
  
  GetMessageFileType copyWith({
    String? messageFileHead,
  }) => GetMessageFileType(
    messageFileHead: messageFileHead ?? this.messageFileHead,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getMessageFileType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
