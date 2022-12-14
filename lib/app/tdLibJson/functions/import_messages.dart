part of '../tdlibjson_api.dart';

class ImportMessages extends TdFunction {

  /// Imports messages exported from another app
  const ImportMessages({
    required this.chatId,
    required this.messageFile,
    required this.attachedFiles,
  });
  
  /// [chatId] Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right
  final int chatId;

  /// [messageFile] File with messages to import. Only inputFileLocal and inputFileGenerated are supported. The file must not be previously uploaded
  final InputFile messageFile;

  /// [attachedFiles] Files used in the imported messages. Only inputFileLocal and inputFileGenerated are supported. The files must not be previously uploaded
  final List<InputFile> attachedFiles;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_file":${messageFile.toJson()},
   "attached_files":${attachedFiles.map((i) => i.toJson()).toList()}
}
	""";
  }
  
  ImportMessages copyWith({
    int? chatId,
    InputFile? messageFile,
    List<InputFile>? attachedFiles,
  }) => ImportMessages(
    chatId: chatId ?? this.chatId,
    messageFile: messageFile ?? this.messageFile,
    attachedFiles: attachedFiles ?? this.attachedFiles,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'importMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
