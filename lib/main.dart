import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const TestingWidget(),
    );
  }
}

// test class
class TestingWidget extends StatefulWidget {
  const TestingWidget({ Key? key }) : super(key: key);

  @override
  State<TestingWidget> createState() => _TestingWidgetState();
}

class _TestingWidgetState extends State<TestingWidget> {
  String name = '';
  int index = 0;
  List<Color>colors = [
    Colors.green,Colors.blue,Colors.yellow,Colors.white];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       //backgroundColor: colors[index],
      appBar: AppBar(
        title: const Text("Welcome to Flutter World"),
        backgroundColor: Colors.blue,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Center(
             child: Text(name,
              style: TextStyle(
                fontSize: 40,
                color: colors[index],
              )
           ),
           ),
                      ElevatedButton(onPressed: () {
               setState(() {
                 index = (index + 1) % colors.length ;
                 name = 'Ranjita';
               });
             },
              child: const Text('click me')),
        ],
      ),
    );
  }
}