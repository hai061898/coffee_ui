import 'package:coffee/utils/color.dart';
import 'package:coffee/utils/layout.dart';
import 'package:flutter/material.dart';

class Categorylist extends StatefulWidget {
  @override
  _CategorylistState createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  int selectedCategory = 0;
  List<String> categories = ["Cappuccino", "Americano", "Mocha","Doppio","Espresso" ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: index == selectedCategory
                        ? kPrimaryColor
                        : Colors.white.withOpacity(0.4),
                  ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: kDefaultPadding ),
                height: 6,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == selectedCategory
                      ? kPrimaryColor
                      : Colors.transparent,
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}