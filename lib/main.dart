import 'dart:async';
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
              final isoData =
                  IsolateParam(port: receivePort.sendPort, data: 1000000000);
              // here we are passing method name and sendPort instance from ReceivePort as listener
              Isolate.spawn(computationallyExpensiveTask, isoData);
							Get.snackbar("Data","After isolate", duration: 1.seconds);
              //It will listen for isolate function to finish
              receivePort.listen((sum) {
                Get.snackbar("Isolate sum", sum.toString(), duration: 1.seconds);
              });
            },
          ),
          ElevatedButton(
              onPressed: (() {
                int sum = computationallyExpensiveTask1(1000000000);
                Get.snackbar("Sum", "$sum");
              }),
              child: const Text("Start without isolate"))
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
void computationallyExpensiveTask(IsolateParam param) {
	int data = 1;
	Timer.periodic(3.seconds, (timer) {
		data++;
		param.port.send("Hello from dart multithread $data");
	});
 }

class IsolateParam {
  SendPort port;

  int data;

  IsolateParam({required this.port, required this.data});
}
