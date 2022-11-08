import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/Tab_view.dart';
import '../modules/pageViewExample/bindings/page_view_example_binding.dart';
import '../modules/pageViewExample/views/page_view_example_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PAGE_VIEW_EXAMPLE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(title: "homeview"),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_VIEW_EXAMPLE,
      page: () =>  PageViewExampleView(),
      binding: PageViewExampleBinding(),
    ),
  ];
}
