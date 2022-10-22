import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const CircularProgressIndicator(),
          ElevatedButton(
            child: const Text('start'),
            onPressed: () async {
              //ReceivePort is to listen for the isolate to finish job
              final receivePort = ReceivePort();
              // here we are passing method name and sendPort instance from ReceivePort as listener
              await Isolate.spawn(
                  computationallyExpensiveTask, receivePort.sendPort);
              //It will listen for isolate function to finish
              receivePort.listen((sum) {
								Get.snackbar("Isolate sum", sum.toString());
              });
            },
          ),
					ElevatedButton(onPressed: (() {
						int sum = computationallyExpensiveTask1(1000000000);
						Get.snackbar("Sum", "$sum");

					}), child: const Text("Start without isolate"))
        ],
      ),
    );
  }
}

int computationallyExpensiveTask1(int value) {
  var sum = 0;
  for (var i = 0; i <= value; i++) {
    sum += i;
  }
  return sum;
}

// this function should be either top level(outside class) or static method
void computationallyExpensiveTask(SendPort sendPort) {
  var sum = 0;
  for (var i = 0; i <= 1000000000; i++) {
    sum += i;
  }
  sendPort.send(sum);
}
