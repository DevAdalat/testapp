part of '../tdlibjson_api.dart';

class CreateBasicGroupChat extends TdFunction {
  /// Returns an existing chat corresponding to a known basic group
  const CreateBasicGroupChat({
    required this.basicGroupId,
    required this.force,
  });

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  /// [force] Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect
  final bool force;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "basic_group_id":$basicGroupId,
   "force":$force
}
	""";
  }

  CreateBasicGroupChat copyWith({
    int? basicGroupId,
    bool? force,
  }) =>
      CreateBasicGroupChat(
        basicGroupId: basicGroupId ?? this.basicGroupId,
        force: force ?? this.force,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'createBasicGroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
