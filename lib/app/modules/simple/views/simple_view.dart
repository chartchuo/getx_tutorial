import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/simple_controller.dart';

class SimpleView extends StatelessWidget {
  const SimpleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SimpleController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleView'),
        centerTitle: true,
      ),
      body: GetBuilder<SimpleController>(builder: (ctrl) {
        return Center(
          child: Column(
            children: [
              Text(
                '${ctrl.count}',
                style: const TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () => ctrl.increment(),
                child: const Text('increment'),
              ),
            ],
          ),
        );
      }),
    );
  }
}
