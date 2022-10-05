import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:testapp/app/model/user.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: ((controller) => Scaffold(
            appBar: AppBar(
              title: const Text('HomeView'),
              centerTitle: true,
            ),
            body: ListView.builder(
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text(controller.names[index]),
                  subtitle: Text("Address: ${controller.addess[index]}"),
                  trailing: Text("Age ${controller.age[index]}]"),
                );
              }),
              itemCount: controller.names.length,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: ((() async {
                final nameController = TextEditingController();
                final ageController = TextEditingController();
                final addressController = TextEditingController();

                Get.dialog(AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    title: const Text("Add Data"),
                    content: Column(children: [
                      TextField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            hintText: "Name",
                          )),
                      TextField(
                          controller: ageController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "Age",
                          )),
                      TextField(
                        controller: addressController,
                        decoration: const InputDecoration(
                          hintText: "Addess",
                        ),
                      ),
                    ]),
                    actions: [
                      TextButton(
                        onPressed: ((() {
                          Get.back();
                        })),
                        child: const Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: ((() async {
                          try {
                            final isar = await Isar.open([UserSchema]);
                            final user = User()
                              ..names!.add(nameController.text)
                              ..age!.add(int.parse(ageController.text))
                              ..addess!.add(addressController.text);
                            isar.writeTxn((() async {
                              isar.users.put(user);
                            }));
													  final myData = await isar.users.get(user.id);
													  Get.snackbar("Info", myData!.names.toString());
                          } catch (e) {
                            Get.snackbar("Info", e.toString());
                          }
                          Get.back();
                          controller.update();
                        })),
                        child: const Text("Save"),
                      )
                    ]));
              })),
              child: const Icon(Icons.add_rounded),
            ))));
  }
}
