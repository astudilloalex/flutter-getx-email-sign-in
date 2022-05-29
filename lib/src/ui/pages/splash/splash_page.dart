import 'package:auth_example/src/ui/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SplashController controller = Get.find<SplashController>();
    return Scaffold(
      body: Center(
        child: Obx(() {
          if (controller.loading) {
            return const CircularProgressIndicator.adaptive();
          }
          return const SizedBox.shrink();
        }),
      ),
    );
  }
}
