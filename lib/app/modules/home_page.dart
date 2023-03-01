import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('GetX Demo'),
        ),
        body: Center(
          child: Obx(() => Text('${controller.count.value}',
              style: textTheme.headlineLarge)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => controller.increment(),
          child: const Icon(Icons.add_rounded),
        ),
      ),
    );
  }
}
