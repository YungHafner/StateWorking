// ignore_for_file: no_logic_in_create_state

import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Text("The first project")));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Кроссплатформенное приложение',
    );
  }

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void onPressed() {
    setState(() {
      number++;
    });
  }

  int number = 0;

  @override
  Widget build(Object context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Text(number.toString()),
          TextButton(onPressed: onPressed, child: const Text("click"))
        ],
      ),
    );
  }
}
