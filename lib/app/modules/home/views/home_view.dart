import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:e_file/app/modules/AllImage/views/all_image_view.dart';
import 'package:e_file/app/modules/FileSearch/views/file_search_view.dart';
import 'package:e_file/app/modules/HomeDrawer/views/home_drawer_view.dart';
import 'package:e_file/app/widgets/custom_widgets.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: const HomeDrawerView(),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: (() async {
            if (!kIsWeb) {
              try {
                controller.getAllTypesFilesSizes();
                await Future.delayed(2.seconds);
              } catch (e) {
                customSnackbar(e.toString());
              }
            }
          }),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: GestureDetector(
                  onTap: (() {
                    Get.to(const FileSearchView());
                  }),
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
                                controller.openDrawer();
                              }),
                              icon: const Icon(Icons.menu_rounded)),
                        ),
                        Expanded(
                          child: Text(
                            "Search your files....",
                            style: Get.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.grey[200],
                child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ToggleSwitch(
                      changeOnTap: true,
                      animate: true,
                      minHeight: 45,
                      curve: Curves.bounceIn,
                      minWidth: Get.width * 0.55,
                      animationDuration: 50,
                      cornerRadius: 20.0,
                      activeBgColors: [
                        [Get.theme.primaryColor],
                        [Get.theme.primaryColor]
                      ],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey[200],
                      inactiveFgColor: Colors.black,
                      initialLabelIndex: 0,
                      totalSwitches: 2,
                      labels: const ['Storage', 'Files'],
                      radiusStyle: true,
                      onToggle: controller.chnageHomeIndex,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              FlipCard(
                speed: 300,
                fill: Fill.fillBack,
                flipOnTouch: false,
                onFlipDone: ((isFront) {}),
                controller: controller.cardController,
                front: Card(
                  color: Colors.grey[200],
                  child: Stack(
                    children: [
                      ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
//                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: CircularPercentIndicator(
                                  arcType: ArcType.FULL,
                                  animation: true,
                                  arcBackgroundColor: Colors.grey[700]!,
                                  linearGradient: const LinearGradient(colors: [
                                    Colors.green,
                                    Colors.yellow,
                                    Colors.red
                                  ]),
                                  curve: Curves.linear,
                                  radius: 90,
                                  lineWidth: 20,
                                  percent: controller.eStorage.percentUsed,
                                  center: Text(
                                      "${controller.eStorage.percentUsed.toInt() * 100}%",
                                      style: Get.textTheme.displaySmall!.apply(
                                        color: Colors.black,
                                      )),
                                  circularStrokeCap: CircularStrokeCap.round,
//                            progressColor: Colors.purple,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black),
                                        ),
                                        const Text(
                                          "  Images",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Obx(
                                      (() => Text(
                                            "    ${controller.totalSizeImages}",
                                            style: Get.textTheme.bodySmall,
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black),
                                        ),
                                        const Text(
                                          "  Videos",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Obx(
                                      (() => Text(
                                            "    ${controller.totalSizeVideos}",
                                            style: Get.textTheme.bodySmall,
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black),
                                        ),
                                        const Text(
                                          "  Documents",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Obx(
                                      (() => Text(
                                            "    ${controller.totalSizeDocs}",
                                            style: Get.textTheme.bodySmall,
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black),
                                        ),
                                        const Text(
                                          "  Music",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Obx(
                                      (() => Text(
                                            "    ${controller.totalSizeMusics}",
                                            style: Get.textTheme.bodySmall,
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black),
                                        ),
                                        const Text(
                                          "  Apps",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Obx(
                                      (() => Text(
                                            "    ${controller.totalSizeAPKs}",
                                            style: Get.textTheme.bodySmall,
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black),
                                        ),
                                        const Text(
                                          "  Others",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Obx(
                                      (() => Text(
                                            "    ${controller.totalSizeOthers}",
                                            style: Get.textTheme.bodySmall,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 0.7,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        "Used",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(controller.eStorage.usedSpace),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        "Total",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(controller.eStorage.totalSpace),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, left: 8),
                            child: SizedBox(
                              height: 40,
                              width: 90,
                              child: Obx(
                                () => AnimatedToggleSwitch<int>.rolling(
                                  borderColor: Colors.transparent,
                                  iconBuilder: ((value, size, foreground) {
                                    return value == 0
                                        ? const Icon(
                                            Icons.phone_android_rounded)
                                        : const Icon(Icons.sd_card_rounded);
                                  }),
                                  foregroundBoxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(2, 2),
                                      blurRadius: 25,
                                    ),
                                  ],
                                  values: const [0, 1],
                                  current: controller.currentStorage.value,
                                  onChanged: controller.handleStorage,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                back: SizedBox(
                  height: Get.height * 0.5,
                  child: Card(
                    color: Colors.grey[200],
                    child: const Text("Back"),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: (() async {
                      Get.to(const AllImageView());
                    }),
                    child: Container(
                      width: Get.width * 0.28,
                      height: Get.height * 0.16,
                      decoration: BoxDecoration(
                        color: Colors.cyan.withAlpha(60),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            FaIcon(
                              FontAwesomeIcons.fileImage,
                              color: Colors.cyan,
                              size: 30,
                            ),
                            Text(
                              "Photos",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: (() async {}),
                    child: Container(
                      width: Get.width * 0.28,
                      height: Get.height * 0.16,
                      decoration: BoxDecoration(
                        color: Colors.red.withAlpha(60),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.fileVideo,
                            color: Colors.red,
                            size: 30,
                          ),
                          Text(
                            "Videos",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: (() async {}),
                    child: Container(
                      width: Get.width * 0.28,
                      height: Get.height * 0.16,
                      decoration: BoxDecoration(
                        color: Colors.purple.withAlpha(60),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.fileAudio,
                            color: Colors.purple,
                            size: 30,
                          ),
                          Text(
                            "Music",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer()
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Spacer(),
                  Container(
                    width: Get.width * 0.28,
                    height: Get.height * 0.16,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withAlpha(60),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.fileZipper,
                          color: Colors.blueGrey,
                          size: 38,
                        ),
                        Text(
                          "Archive",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: Get.width * 0.28,
                    height: Get.height * 0.16,
                    decoration: BoxDecoration(
                      color: Colors.brown.withAlpha(60),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.fileWord,
                          color: Colors.brown,
                          size: 30,
                        ),
                        Text(
                          "Documents",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: Get.width * 0.28,
                    height: Get.height * 0.16,
                    decoration: BoxDecoration(
                      color: Colors.green.withAlpha(60),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.android,
                          color: Colors.green,
                          size: 30,
                        ),
                        Text(
                          "Apps",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const Spacer()
                ],
              ),
              const ListTile(
                title: Text("Recent Files"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
