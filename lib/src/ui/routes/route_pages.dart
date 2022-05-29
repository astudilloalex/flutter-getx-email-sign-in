import 'package:auth_example/src/ui/pages/home/home_binding.dart';
import 'package:auth_example/src/ui/pages/home/home_page.dart';
import 'package:auth_example/src/ui/pages/sign_in/sign_in_binding.dart';
import 'package:auth_example/src/ui/pages/sign_in/sign_in_page.dart';
import 'package:auth_example/src/ui/pages/splash/splash_binding.dart';
import 'package:auth_example/src/ui/pages/splash/splash_page.dart';
import 'package:auth_example/src/ui/routes/route_names.dart';
import 'package:get/get.dart';

class RoutePages {
  const RoutePages._();

  static List<GetPage<dynamic>> get all {
    return [
      GetPage(
        name: RouteNames.home,
        page: () => const HomePage(),
        binding: const HomeBinding(),
      ),
      GetPage(
        name: RouteNames.signIn,
        page: () => const SignInPage(),
        binding: const SignInBinding(),
      ),
      GetPage(
        name: RouteNames.splash,
        page: () => const SplashPage(),
        binding: const SplashBinding(),
      ),
    ];
  }
}
