import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../routes/app_pages.dart';



class HomeView extends StatefulWidget {
  HomeView({ required this.title});

  final String title;

  @override
  _HomeViewState createState() => new _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar:  AppBar(
          actions: [
            IconButton(onPressed: (){Get.toNamed(Routes.PAGE_VIEW_EXAMPLE);}, icon: Icon(Icons.construction_sharp))
          ],
          bottom:  const TabBar(
            tabs: [
               Tab(icon:  Icon(Icons.directions_car)),
               Tab(icon:  Icon(Icons.directions_transit)),
               Tab(icon:  Icon(Icons.directions_bike)),
               Tab(
                icon:  Icon(Icons.airplanemode_active),
              )
            ],
          ),
        ),
        body: const TabBarView(children: [
          OnePage(color: Colors.black,),
          OnePage(color: Colors.green,),
          OnePage(color: Colors.red,),
          OnePage(color: Colors.blue,),
        ]),
      ),
    );
  }
}

class OnePage extends StatefulWidget {
  final Color color;

  const OnePage({required this.color}) ;

  @override
  _OnePageState createState() => new _OnePageState();
}

class _OnePageState extends State<OnePage> with AutomaticKeepAliveClientMixin<OnePage> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox.expand(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const TextField(),
                Text(
                  '$index',
                  style: TextStyle(color: widget.color),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}