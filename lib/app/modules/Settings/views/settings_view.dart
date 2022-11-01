import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
		    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(
              "Settings",
              style: Get.textTheme.headline2!.apply(color: Colors.black),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 20),
              Card(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "File Manager",
                        style: Get.textTheme.headline4!
                            .apply(color: Get.theme.primaryColor),
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      title: const Text("Show hideen files"),
                      subtitle: const Text("Show hidden folder and files"),
                      trailing: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                          child: Obx(
                            (() => FlutterSwitch(
                                  value: controller.showHiddenFolders.value,
                                  onToggle: controller.showHiddenFoldersSet,
                                )),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text("Show modified date"),
                      subtitle: const Text("Show last modified date of files"),
                      trailing: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                          child: Obx(
                            (() => FlutterSwitch(
                                  value: controller.showModifiedDate.value,
                                  onToggle: controller.showModifiedDateSet,
                                )),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text("Show Size"),
                      subtitle: const Text("Show file size of files"),
                      trailing: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                          child: Obx(
                            (() => FlutterSwitch(
                                  value: controller.showFileSize.value,
                                  onToggle: controller.showFileSizeSet,
                                )),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text("Show modified time"),
                      subtitle: const Text("Show modified time of files"),
                      trailing: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                          child: Obx(
                            (() => FlutterSwitch(
                                  value: controller.showModifiedTime.value,
                                  onToggle: controller.showModifiedTimeSet,
                                )),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text("Show Video Thumbnails"),
                      subtitle: const Text("Show thumbnail of video files"),
                      trailing: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                          child: Obx(
                            (() => FlutterSwitch(
                                  value: controller.showVideoThumbnail.value,
                                  onToggle: controller.showVideoThumbnailSet,
                                )),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text("Show Music thumbnail"),
                      subtitle: const Text("Show music files thumbnails"),
                      trailing: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                          child: Obx(
                            (() => FlutterSwitch(
                                  value: controller.showMusicThumbnail.value,
                                  onToggle: controller.showMusicThumbnailSet,
                                )),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text("Show photo preview thumbnail"),
                      subtitle: const Text("Show images preview thumbnails"),
                      trailing: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                          child: Obx(
                            (() => FlutterSwitch(
                                  value: controller.showPhotoPThumbnail.value,
                                  onToggle: controller.showPhotoPThumbnailSet,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
 }
}
