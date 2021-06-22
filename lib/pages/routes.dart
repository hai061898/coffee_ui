import 'package:coffee/pages/detail/detail_screen.dart';
import 'package:coffee/pages/home/home_screen.dart';
import 'package:get/get.dart';

routes ()=>[
  GetPage(name: '/', page:()=> HomeScreen()),
  GetPage(name: '/detail', page:()=> DetailScreen())
];