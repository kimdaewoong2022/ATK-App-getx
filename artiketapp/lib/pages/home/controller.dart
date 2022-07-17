import 'package:get/get.dart';

import 'index.dart';

class HomeController extends GetxController {
  HomeController();

  final state = HomeState();

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "제목",
      "정보",
    );
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
