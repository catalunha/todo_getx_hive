import 'package:get/get.dart';
import 'package:todo_getx_hive/app/controllers/auth/auth_binding.dart';
import 'package:todo_getx_hive/app/controllers/auth/login/login_binding.dart';
import 'package:todo_getx_hive/app/views/auth/login/login_page.dart';
import 'package:todo_getx_hive/app/views/home/home_page.dart';
import 'package:todo_getx_hive/app/views/splash/splash_page.dart';

class Routes {
  static const splash = '/';
  static const splash2 = '/splash';
  static const login = '/login';
  static const home = '/home';

  static final pageList = [
    GetPage(
      name: Routes.splash,
      binding: AuthBinding(),
      page: () => SplashPage(),
    ),
    GetPage(
      name: Routes.login,
      binding: LoginBinding(),
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.login,
      binding: LoginBinding(),
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.home,
      // binding: HomeBinding(),
      page: () => HomePage(),
    ),
  ];
}
