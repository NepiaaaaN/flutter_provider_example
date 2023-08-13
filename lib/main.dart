import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mydata.dart';
import 'myslider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const double fontSize = 45;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => MyData(),
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Consumerが変更を検知して、Textを作り直す
              Consumer<MyData>(
                builder: (context, mydata, _) => Column(
                  children: [
                    Text(
                      'スライダー1の値 : ${mydata.value.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: fontSize),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'スライダー2の値 : ${mydata.value2.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: fontSize),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const MySlider(),
            ],
          )),
    );
  }
}
