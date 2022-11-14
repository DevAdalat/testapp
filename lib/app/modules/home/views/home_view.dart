import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends MyView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return Scaffold(
      body: FutureBuilder(
          future: controller.getFutureData(),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Obx(
              (() => SingleChildScrollView(
								physics: const BouncingScrollPhysics(),
                    controller: controller.scrollController,
                    child: StaggeredGrid.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 12,
                        children: List.generate(
                            controller.pairedItems.length + 1, ((index) {
                          if (index > controller.pairedItems.length - 1) {
                            return const StaggeredGridTile.count(
                              crossAxisCellCount: 2,
                              mainAxisCellCount: 0.3,
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          } else {
                            return StaggeredGridTile.count(
                              crossAxisCellCount: 1,
                              mainAxisCellCount: index.isEven ? 1.2 : 1.8,
                              child: Card(
                                child: Center(
                                  child: Text(index.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            );
                          }
                        }))
//						children: List.generate(controller.pairedItems.length, ((index) => StaggeredGridTile.count(
//									crossAxisCellCount: 1,
//									mainAxisCellCount: index.isEven ? 1.2 : 1.8,
//									child: const Card(),
//									)),)
                        ),
                  )),
            );
          })),
    );
  }
}

abstract class MyView<T> extends StatelessWidget {
  const MyView({super.key});
  T get controller => Get.find<T>();

  @override
  Widget build(context);
}
