import 'package:create_list_using_getx/controller/home_page_controller.dart';
import 'package:create_list_using_getx/views/add_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final con = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.pink[100],
          onPressed: () {
            Get.to(() => AddDataPage());
          },
          label: const Icon(Icons.add, color: Colors.white),
        ),
        backgroundColor: Colors.pink[100],
        body: SafeArea(
            child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<HomePageController>(
                  init: con,
                  builder: (controller) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: controller.showlists.length,
                        itemBuilder: (BuildContext context, int index) {
                          // final DataModel data = showList[index];
                          return Container(
                            margin: const EdgeInsets.all(8.0),
                            height: 100,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 8,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(controller.showlists[index].title,
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 18)),
                                  Text(controller.showlists[index].description,
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 16)),
                                  const SizedBox(height: 10),
                                  Text(
                                      controller.showlists[index].id.toString(),
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                  Text(
                                      controller.showlists[index].number
                                          .toString(),
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  })
            ],
          ),
        )));
  }
}
