import 'package:get/get.dart';
import 'package:state_management/screens/Dashboard.dart';

class LoginController extends GetxController {
  RxString email = ''.obs;
  RxString password = ''.obs;
  RxBool loading = false.obs;

  void login() async {
    loading.value = true;
    await Future.delayed(Duration(seconds: 2));

    if (email.value.trim() == "nidhi@gmail.com" &&
        password.value.trim() == "Nidhi@3211") {
      Get.to(() => Dashboard());
      Get.snackbar("Success", "Login successful!");
    } else {
      Get.snackbar("Error", "Invalid email or password");
    }
    loading.value = false;
  }
}
