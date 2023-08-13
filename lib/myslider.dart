import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mydata.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    // Provider.ofでMyDataにアクセスし、値の取得や設定を行う
    final mydata = Provider.of<MyData>(context);
    return Column(
      children: [
        Slider(
          value: mydata.value,
          onChanged: (value) => mydata.value = value,
          activeColor: Colors.green,
        ),
        Slider(
          value: mydata.value2,
          onChanged: (value) => mydata.value2 = value,
          activeColor: Colors.purple,
        ),
      ],
    );
  }
}
