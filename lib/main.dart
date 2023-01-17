import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(appBar: AppBar(),body: MyWidget(),),
    ),
  );
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
          child: Container(
        width: double.infinity,
        color: Colors.blueGrey,
        height: 250.0,
      child: AnimatedAlign(
        alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        child: const FlutterLogo(size: 50.0,),
      ),
      )),
    );
  }
}
