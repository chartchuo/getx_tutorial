import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/app/routes/app_pages.dart';

import '../controllers/main_menu_controller.dart';

class MainMenuView extends GetView<MainMenuController> {
  const MainMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainMenuView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: AppPages.routes
              .map(
                (p) => ElevatedButton(
                  onPressed: () => Get.offNamed(p.name),
                  child: Text('click to ${p.name}'),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
