import 'package:coffee/models/coffee_models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpecialCoffeCard extends StatelessWidget {
  const SpecialCoffeCard({Key? key, required this.coffee}) : super(key: key);
  final Coffee coffee;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 140,
          width: Get.width,
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 120,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage(coffee.image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffee.name,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    coffee.ingredient,
                    style: TextStyle(color: Color(0xff919293), fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            r'$ ',
                            style: TextStyle(
                                color: Color(0xffd17842),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            coffee.price.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
