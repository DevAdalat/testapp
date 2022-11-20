import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
			body: Stack(
				children: [
				Obx(() => 	ListView.builder(itemBuilder: ((context, index) {
					  return  Text(
							controller.results[index].toString(),
							);
					}),
						itemCount: controller.results.length,
						),),
					Align(
						alignment: Alignment.bottomCenter,
						child: Padding(
						  padding: const EdgeInsets.all(8.0),
						  child: TextField(
								controller: controller.textController,
						  	decoration: InputDecoration(
						  		hintText: "Enter Command",
						  		suffixIcon: IconButton(
						  			onPressed: (() {
											final commands = controller.textController.text.split(" ");
											final exec = commands.first;
											commands.removeAt(0);
						  			  try {
						  			  	final result = Process.runSync(exec, commands);
												if (result.exitCode != 0) {
													throw result.stderr;
												}
												controller.results.add(result.stdout.toString());
						  			  } catch(e) {
						  			  	Get.snackbar("Error", e.toString());
						  			  }
						  			}),
						  			icon: const Icon(Icons.play_circle_rounded),
						  			),
						  		),
						  	),
						),
						)
				],
				),
			);
  }
}
