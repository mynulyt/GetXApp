import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_app/exampleTwo.dart';

class Slideropacity extends StatefulWidget {
  const Slideropacity({super.key});

  @override
  State<Slideropacity> createState() => _SlideropacityState();
}

Exampletwo exampletwoController = Get.put(Exampletwo());

class _SlideropacityState extends State<Slideropacity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Obx(
            () => Container(
              child: Center(
                child: Text(
                  'Hello',
                  style: TextStyle(color: Colors.red, fontSize: 34),
                ),
              ),
              height: 200,
              width: 200,
              color: Colors.green.withOpacity(
                exampletwoController.opacity.value,
              ),
            ),
          ),

          Obx(
            () => Slider(
              value: exampletwoController.opacity.value,
              onChanged: (value) {
                exampletwoController.setOpacity(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
