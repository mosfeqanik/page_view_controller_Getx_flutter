import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/page_view_example_controller.dart';

class PageViewExampleView extends StatelessWidget {
  List<Widget> pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
  ];
  final PageController pagecontrller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Get.toNamed(Routes.HOME);
          },
        ),
      ),
      body: PageView(
        controller: pagecontrller,
        pageSnapping: true,
        children: [
          pagedesign(pagecontrller: pagecontrller,BgColor: Colors.red,TextString: ">"),
          pageWidget(pagecontrller: pagecontrller),
          pagedesign(pagecontrller: pagecontrller,BgColor: Colors.green,TextString: "<"),

          // Container(
          //   color: Colors.green,
          //   child: Column(
          //     children: [
          //       TextField(
          //         controller: TextEditingController(),
          //       ),
          //       ElevatedButton(
          //           onPressed: () {
          //             pagecontrller.previousPage(
          //                 duration: Duration(seconds: 1),
          //                 curve: Curves.bounceIn);
          //           },
          //           child: Text("<"))
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class pageWidget extends StatelessWidget {
  pageWidget({
    Key? key,
    required this.pagecontrller,
  }) : super(key: key);

  final PageController pagecontrller;
  final TextEditingController AnotherTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          TextField(
            controller: AnotherTextEditController,
          ),
          ElevatedButton(
              onPressed: () {
                pagecontrller.previousPage(
                    duration: Duration(seconds: 1),
                    curve: Curves.linear);
              },
              child: Text("<")),
          ElevatedButton(
              onPressed: () {
                pagecontrller.nextPage(
                    duration: Duration(seconds: 1),
                    curve: Curves.linear);
              },
              child: Text(">"))
        ],
      ),
    );
  }
}
// ">"
class pagedesign extends StatelessWidget {
   pagedesign({
    Key? key,
    required this.pagecontrller,
    required this.BgColor,
    required this.TextString,
  }) : super(key: key);
  final TextEditingController AbTextEditController = TextEditingController();
  final PageController pagecontrller;
  final Color BgColor;
  final String TextString;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BgColor,
      child: Column(
        children: [
          TextField(
            controller: AbTextEditController,

          ),
          ElevatedButton(
              onPressed: () {
                pagecontrller.nextPage(
                    duration: Duration(seconds: 1),
                    curve: Curves.linear);
              },
              child: Text(TextString))
        ],
      ),
    );
  }
}
