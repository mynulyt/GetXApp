import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Getx Counter")),
      body: Center(
        child: Center(
          child: Obx(() {
            print("rebuild");
            return Text(
              controller.counter.toString(),
              style: TextStyle(fontSize: 34),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increamentCounter();
        },
      ),
    );
  }
}
