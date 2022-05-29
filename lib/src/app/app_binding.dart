import 'package:auth_example/src/app/controllers/app_controller.dart';
import 'package:auth_example/src/app/controllers/auth_controller.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  const AppBinding();

  @override
  void dependencies() {
    Get.put<AuthController>(AuthController(), permanent: true);
    Get.put<AppController>(AppController(), permanent: true);
  }
}
