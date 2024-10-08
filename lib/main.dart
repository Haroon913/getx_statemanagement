import 'package:flutter/material.dart';
import 'package:getx_statemanagement/example_three.dart';
import 'package:getx_statemanagement/example_two.dart';
import 'package:getx_statemanagement/favourite_app.dart';
import 'package:getx_statemanagement/homescreen.dart';
import 'package:getx_statemanagement/image_picker.dart';
import 'package:getx_statemanagement/login.dart';

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
      home: LoginScreen(),
    );
  }
}


