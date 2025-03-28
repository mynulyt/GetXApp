import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/change_controller.dart';

class Switchchange extends StatefulWidget {
  const Switchchange({super.key});

  @override
  State<Switchchange> createState() => _SwitchchangeState();
}

ChangeController changeController = Get.put(ChangeController());

class _SwitchchangeState extends State<Switchchange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hi")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Notifications"),

          Obx(
            () => Switch(
              value: changeController.notification.value,
              onChanged: (value) {
                changeController.setNotification(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
