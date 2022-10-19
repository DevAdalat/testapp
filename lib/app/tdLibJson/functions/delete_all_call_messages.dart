part of '../tdlibjson_api.dart';

class DeleteAllCallMessages extends TdFunction {
  /// Deletes all call messages
  const DeleteAllCallMessages({
    required this.revoke,
  });

  /// [revoke] Pass true to delete the messages for all users
  final bool revoke;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "revoke":$revoke
}
	""";
  }

  DeleteAllCallMessages copyWith({
    bool? revoke,
  }) =>
      DeleteAllCallMessages(
        revoke: revoke ?? this.revoke,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteAllCallMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
