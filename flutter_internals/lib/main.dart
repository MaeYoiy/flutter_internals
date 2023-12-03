import 'package:flutter/material.dart';
import 'package:flutter_internals/keys/keys.dart';
import 'package:flutter_internals/ui_updates_demo.dart';

void main() {
  // final อนุญาตให้แก้ไขได้ ไม่มีผลต่อที่อยู่ในหน่วยความจำ แต่ไม่สามารถเขียนทับได้
  // var สามารถเขียนทับได้ แต่ไม่อนุญาตให้แก้ไขได้
  // const ไม่สามารถเขียนทับได้ และไม่อนุญาตให้แก้ไขได้ เพราะอย่างงี้ flutter สามารถนำ const มา reuse widget ได้ เพราะค่าไม่มีการเปลี่ยนแปลงแน่นอน
  final number = [1, 2, 3];
  //number = [4, 5, 6];
  number.add(4);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('flutter internals'),
          ),
          body: const Keys(),
        ));
  }
}
