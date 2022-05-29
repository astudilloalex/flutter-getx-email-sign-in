import 'package:auth_example/src/app/controllers/auth_controller.dart';
import 'package:auth_example/src/ui/routes/route_names.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController({required this.authController});

  final AuthController authController;

  final RxBool _loading = RxBool(true);

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 5));
    _loading(false);
    if (authController.currentUser != null) {
      Get.offNamed(RouteNames.home);
    } else {
      Get.offNamed(RouteNames.signIn);
    }
  }

  bool get loading => _loading.value;
}
