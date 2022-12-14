part of '../tdlibjson_api.dart';

class SetDefaultGroupAdministratorRights extends TdFunction {

  /// Sets default administrator rights for adding the bot to basic group and supergroup chats; for bots only
  const SetDefaultGroupAdministratorRights({
    this.defaultGroupAdministratorRights,
  });
  
  /// [defaultGroupAdministratorRights] Default administrator rights for adding the bot to basic group and supergroup chats; may be null
  final ChatAdministratorRights? defaultGroupAdministratorRights;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "default_group_administrator_rights":${defaultGroupAdministratorRights?.toJson()}
}
	""";
  }
  
  SetDefaultGroupAdministratorRights copyWith({
    ChatAdministratorRights? defaultGroupAdministratorRights,
  }) => SetDefaultGroupAdministratorRights(
    defaultGroupAdministratorRights: defaultGroupAdministratorRights ?? this.defaultGroupAdministratorRights,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setDefaultGroupAdministratorRights';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
