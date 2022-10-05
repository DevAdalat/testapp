import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:testapp/app/model/user.dart';

class HomeController extends GetxController {
  List<String> names = [];
  List<int> age = [];
  List<String> addess = [];

  handleData() async {
    final isar = await Isar.open([UserSchema]);
    final user = await isar.users.get(User().id);
    names = user!.names ?? [];
    age = user.age ?? [];
    addess = user.addess ?? [];
  }

  @override
  onInit() {
    handleData();
    super.onInit();
  }
}
