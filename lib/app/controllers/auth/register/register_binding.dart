import 'package:get/get.dart';
import 'package:todo_getx_hive/app/controllers/auth/register/register_controller.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
        () => RegisterController(userService: Get.find()));
  }
}
