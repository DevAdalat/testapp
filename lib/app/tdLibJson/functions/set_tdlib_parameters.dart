part of '../tdlibjson_api.dart';

class SetTdlibParameters extends TdFunction {

  /// Sets the parameters for TDLib initialization. Works only when the current authorization state is authorizationStateWaitTdlibParameters
  const SetTdlibParameters({
    required this.useTestDc,
    required this.databaseDirectory,
    required this.filesDirectory,
    required this.databaseEncryptionKey,
    required this.useFileDatabase,
    required this.useChatInfoDatabase,
    required this.useMessageDatabase,
    required this.useSecretChats,
    required this.apiId,
    required this.apiHash,
    required this.systemLanguageCode,
    required this.deviceModel,
    required this.systemVersion,
    required this.applicationVersion,
    required this.enableStorageOptimizer,
    required this.ignoreFileNames,
  });
  
  /// [useTestDc] Pass true to use Telegram test environment instead of the production environment
  final bool useTestDc;

  /// [databaseDirectory] The path to the directory for the persistent database; if empty, the current working directory will be used
  final String databaseDirectory;

  /// [filesDirectory] The path to the directory for storing files; if empty, database_directory will be used
  final String filesDirectory;

  /// [databaseEncryptionKey] Encryption key for the database
  final String databaseEncryptionKey;

  /// [useFileDatabase] Pass true to keep information about downloaded and uploaded files between application restarts
  final bool useFileDatabase;

  /// [useChatInfoDatabase] Pass true to keep cache of users, basic groups, supergroups, channels and secret chats between restarts. Implies use_file_database
  final bool useChatInfoDatabase;

  /// [useMessageDatabase] Pass true to keep cache of chats and messages between restarts. Implies use_chat_info_database
  final bool useMessageDatabase;

  /// [useSecretChats] Pass true to enable support for secret chats
  final bool useSecretChats;

  /// [apiId] Application identifier for Telegram API access, which can be obtained at https://my.telegram.org
  final int apiId;

  /// [apiHash] Application identifier hash for Telegram API access, which can be obtained at https://my.telegram.org
  final String apiHash;

  /// [systemLanguageCode] IETF language tag of the user's operating system language; must be non-empty
  final String systemLanguageCode;

  /// [deviceModel] Model of the device the application is being run on; must be non-empty
  final String deviceModel;

  /// [systemVersion] Version of the operating system the application is being run on. If empty, the version is automatically detected by TDLib
  final String systemVersion;

  /// [applicationVersion] Application version; must be non-empty
  final String applicationVersion;

  /// [enableStorageOptimizer] Pass true to automatically delete old files in background
  final bool enableStorageOptimizer;

  /// [ignoreFileNames] Pass true to ignore original file names for downloaded files. Otherwise, downloaded files are saved under names as close as possible to the original name
  final bool ignoreFileNames;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "use_test_dc":$useTestDc,
   "database_directory":"$databaseDirectory",
   "files_directory":"$filesDirectory",
   "database_encryption_key":"$databaseEncryptionKey",
   "use_file_database":$useFileDatabase,
   "use_chat_info_database":$useChatInfoDatabase,
   "use_message_database":$useMessageDatabase,
   "use_secret_chats":$useSecretChats,
   "api_id":$apiId,
   "api_hash":"$apiHash",
   "system_language_code":"$systemLanguageCode",
   "device_model":"$deviceModel",
   "system_version":"$systemVersion",
   "application_version":"$applicationVersion",
   "enable_storage_optimizer":$enableStorageOptimizer,
   "ignore_file_names":$ignoreFileNames
}
	""";
  }
  
  SetTdlibParameters copyWith({
    bool? useTestDc,
    String? databaseDirectory,
    String? filesDirectory,
    String? databaseEncryptionKey,
    bool? useFileDatabase,
    bool? useChatInfoDatabase,
    bool? useMessageDatabase,
    bool? useSecretChats,
    int? apiId,
    String? apiHash,
    String? systemLanguageCode,
    String? deviceModel,
    String? systemVersion,
    String? applicationVersion,
    bool? enableStorageOptimizer,
    bool? ignoreFileNames,
  }) => SetTdlibParameters(
    useTestDc: useTestDc ?? this.useTestDc,
    databaseDirectory: databaseDirectory ?? this.databaseDirectory,
    filesDirectory: filesDirectory ?? this.filesDirectory,
    databaseEncryptionKey: databaseEncryptionKey ?? this.databaseEncryptionKey,
    useFileDatabase: useFileDatabase ?? this.useFileDatabase,
    useChatInfoDatabase: useChatInfoDatabase ?? this.useChatInfoDatabase,
    useMessageDatabase: useMessageDatabase ?? this.useMessageDatabase,
    useSecretChats: useSecretChats ?? this.useSecretChats,
    apiId: apiId ?? this.apiId,
    apiHash: apiHash ?? this.apiHash,
    systemLanguageCode: systemLanguageCode ?? this.systemLanguageCode,
    deviceModel: deviceModel ?? this.deviceModel,
    systemVersion: systemVersion ?? this.systemVersion,
    applicationVersion: applicationVersion ?? this.applicationVersion,
    enableStorageOptimizer: enableStorageOptimizer ?? this.enableStorageOptimizer,
    ignoreFileNames: ignoreFileNames ?? this.ignoreFileNames,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setTdlibParameters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
