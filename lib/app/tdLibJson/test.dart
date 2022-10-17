import 'package:testapp/app/tdLibJson/tdlibjson_api.dart';

void main() {
  const data = SetTdlibParameters(
    ignoreFileNames: false,
    useTestDc: true,
    useSecretChats: true,
    useFileDatabase: true,
    useMessageDatabase: true,
    useChatInfoDatabase: true,
    apiId: 12860793,
    apiHash: "668c3c09dc67819c912c918db5648cf1",
    applicationVersion: "v1",
    systemVersion: "",
    systemLanguageCode: "en",
    deviceModel: "Mi 10i",
    databaseDirectory: "/sdcard/Movies",
    databaseEncryptionKey: "Testkey",
    filesDirectory: "/sdcard/Movies",
    enableStorageOptimizer: true,
  );
  print(data.toJson().toString());
}
