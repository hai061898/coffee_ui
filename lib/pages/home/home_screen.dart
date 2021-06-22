import 'package:coffee/data/data.dart';
import 'package:coffee/pages/home/components/category_menu.dart';
import 'package:coffee/pages/home/components/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/coffee_card.dart';
import 'components/special_coffee_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? tabController;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 620,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [              
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Find the best\ncoffee for you",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SearchBar(),
                SizedBox(
                  height: 20,
                ),
                Categorylist(),
                Flexible(
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: coffeedata.length,
                      itemBuilder: (context, index) => CardCoffee(press: '/detail',coffee: coffeedata[index]),
                    ),
                  ),
                ),
                Text(
                  "Special for you",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: coffeedata.length,
            itemBuilder: (context,index)=>SpecialCoffeCard(coffee:coffeedata[index]
          ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Color(0xffd17842),
        unselectedItemColor: Color(0xff4d4f52),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}


