import 'package:auto_size_text/auto_size_text.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/notes_controller.dart';

class NotesView extends GetView<NotesController> {
  const NotesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 10, right: 10),
              children: [
                Container(
                  height: Get.height * 0.09,
                  color: Colors.transparent,
                ),
                ListTile(
                  title: const Text("Simple Notes"),
                  trailing: IconButton(
                    onPressed: (() {
                      Get.dialog(AlertDialog(
                        title: const Text("Select one"),
                        content:
                            ListView.builder(itemBuilder: ((context, index) {
                          return ListTile(
                            leading: Radio(
                              value: index == controller.notesSwitcherValue,
                              groupValue: true,
                              onChanged: ((value) {
                                controller.notesSwitcherHandler(index);
                              }),
                            ),
                          );
                        })),
                      ));
                    }),
                    icon: const Icon(Icons.arrow_drop_down_rounded),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                controller.sINotes.isEmpty
                    ? SizedBox(
                        height: Get.height * 0.5,
                        child: const Center(
                            child: Text("You don't have any notes")),
                      )
                    : Column(
                        children:
                            List.generate(controller.sINotes.length, (index) {
                          return SizedBox(
                            height: Get.height * 0.32,
                            width: double.infinity,
                            child: Card(
                              elevation: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 10, 5, 10),
                                    child: AutoSizeText(
                                      "${controller.sINotes[index]["title"]}",
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      )
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: GestureDetector(
                  onTap: (() {}),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Get.theme.primaryColor.withAlpha(50),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: IconButton(
                                onPressed: (() {
                                  Get.back();
                                }),
                                icon: const Icon(Icons.arrow_back)),
                          ),
                          Expanded(
                            child: TextField(
                              controller: controller.notesSearchController,
                              decoration: InputDecoration(
                                  hintText: "Search your notes ",
                                  border: InputBorder.none,
                                  suffixIcon: controller.isShowIcon
                                      ? IconButton(
                                          onPressed: (() {
                                            controller.notesSearchController
                                                .clear();
                                            controller.isShowIcon = false;
                                            controller.update();
                                          }),
                                          icon: const Icon(Icons.close_rounded))
                                      : null),
                              onChanged: ((value) {
                                if (value.isNotEmpty) {
                                  controller.isShowIcon = true;
                                  controller.update();
                                } else {
                                  controller.isShowIcon = false;
                                  controller.update();
                                }
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionBubble(
        animation: controller.animation,
        backGroundColor: Get.theme.primaryColor,
        iconColor: Colors.white,
        items: [
          Bubble(
            bubbleColor: Get.theme.primaryColor,
            icon: Icons.notes_rounded,
            iconColor: Colors.white,
            onPress: () {},
            title: 'Simple Notes',
            titleStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Bubble(
            bubbleColor: Get.theme.primaryColor,
            icon: FontAwesomeIcons.lock,
            iconColor: Colors.white,
            onPress: () {},
            title: 'Secure Notes',
            titleStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Bubble(
            bubbleColor: Get.theme.primaryColor,
            icon: Icons.security_rounded,
            iconColor: Colors.white,
            onPress: () {},
            title: 'Encrypted Notes',
            titleStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        onPress: (() {
          if (controller.animationController.status ==
              AnimationStatus.completed) {
            controller.animationController.reverse();
          } else {
            controller.animationController.forward();
          }
        }),
        iconData: Icons.add_rounded,
      ),
    );
  }
}
