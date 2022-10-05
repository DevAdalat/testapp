import 'package:isar/isar.dart';
part 'user.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;
  List<String>? names;
  List<int>? age;
  List<String>? addess;
}
