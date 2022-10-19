part of '../tdlibjson_api.dart';

class RemoveContacts extends TdFunction {
  /// Removes users from the contact list
  const RemoveContacts({
    required this.userIds,
  });

  /// [userIds] Identifiers of users to be deleted
  final List<int> userIds;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "user_ids":"${userIds.map((i) => i).toList()}"
}
	""";
  }

  RemoveContacts copyWith({
    List<int>? userIds,
  }) =>
      RemoveContacts(
        userIds: userIds ?? this.userIds,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
