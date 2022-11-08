import 'package:get/get.dart';

import '../controllers/page_view_example_controller.dart';

class PageViewExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageViewExampleController>(
      () => PageViewExampleController(),
    );
  }
}
