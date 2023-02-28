import 'package:bloc_tutorial/src/getx/count_getx_controller.dart';
import 'package:bloc_tutorial/src/getx/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("더하기 예제"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(GetxHome(), binding: BindingsBuilder(() {
                    Get.put(CountGetxController());
                  }));
                },
                child: Text("GetX")),
            ElevatedButton(onPressed: () {}, child: Text("Cublt")),
            ElevatedButton(onPressed: () {}, child: Text("Bloc")),
          ],
        ),
      ),
    );
  }
}
