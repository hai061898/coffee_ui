import 'package:coffee/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'coffee',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      getPages: routes(),
    );
  }
}