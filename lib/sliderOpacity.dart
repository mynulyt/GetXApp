import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Slideropacity extends StatefulWidget {
  const Slideropacity({super.key});

  @override
  State<Slideropacity> createState() => _SlideropacityState();
}

double opacity = 0.4;
@override
void initState() {
  initState();
}

class _SlideropacityState extends State<Slideropacity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 200, width: 200, color: Colors.green),
          Slider(
            value: opacity,
            onChanged: (value) {
              print(value);
              opacity = value;
            },
          ),
        ],
      ),
    );
  }
}
