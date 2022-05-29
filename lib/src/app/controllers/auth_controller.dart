import 'package:auth_example/src/ui/routes/route_names.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  AuthController();

  @override
  void onInit() {
    super.onInit();
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) Get.offAllNamed(RouteNames.signIn);
    });
  }

  User? get currentUser => FirebaseAuth.instance.currentUser;
}
