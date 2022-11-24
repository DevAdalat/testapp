import 'package:get_storage/get_storage.dart';

class UserDatabase {
	final user = GetStorage("User");

	bool get isUserSignedIn => user.read("isUserSignedIn");

	set isUserSignedIn(bool value) {
		user.write("isUserSignedIn", value);
	}
}
