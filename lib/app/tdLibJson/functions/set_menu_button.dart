part of '../tdlibjson_api.dart';

class SetMenuButton extends TdFunction {

  /// Sets menu button for the given user or for all users; for bots only
  const SetMenuButton({
    required this.userId,
    required this.menuButton,
  });
  
  /// [userId] Identifier of the user or 0 to set menu button for all users
  final int userId;

  /// [menuButton] New menu button
  final BotMenuButton menuButton;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "user_id":$userId,
   "menu_button":${menuButton.toJson()}
}
	""";
  }
  
  SetMenuButton copyWith({
    int? userId,
    BotMenuButton? menuButton,
  }) => SetMenuButton(
    userId: userId ?? this.userId,
    menuButton: menuButton ?? this.menuButton,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setMenuButton';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
