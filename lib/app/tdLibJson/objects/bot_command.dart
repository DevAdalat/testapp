part of '../tdlibjson_api.dart';

class BotCommand extends TdObject {

  /// Represents a command supported by a bot
  const BotCommand({
    required this.command,
    required this.description,
  });
  
  /// [command] Text of the bot command 
  final String command;

  /// [description] Description of the bot command
  final String description;
  
  /// Parse from a json
  factory BotCommand.fromJson(Map<String, dynamic> json) => BotCommand(
    command: json['command'],
    description: json['description'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "command":"$command",
   "description":"$description"
}
	""";
  }
  
  BotCommand copyWith({
    String? command,
    String? description,
  }) => BotCommand(
    command: command ?? this.command,
    description: description ?? this.description,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'botCommand';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
