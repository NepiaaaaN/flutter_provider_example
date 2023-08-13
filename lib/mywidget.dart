import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**
     * InheritedWidgetを使う場合
     * MyInheritedWidget myInheritedWidget = MyInheritedWidget.of(context);
     * int count = myInheritedWidget.counter;
     */

    // Providerを使うことで、InheritedWidgetを継承したMyInheritedWidgetを自作せずに済む
    int count = Provider.of<int>(context);
    return Text(count.toString(),
        style: Theme.of(context).textTheme.headlineMedium);
  }
}
