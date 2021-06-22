import 'package:coffee/models/coffee_models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardCoffee extends StatelessWidget {
  const CardCoffee({Key? key, required this.coffee, required this.press}) : super(key: key);
  final Coffee coffee;
  final String press;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: ()=>Get.toNamed(press),
          child: Container(
            height: 250,
            width: 160,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 135,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                        coffee.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cappuccino",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        coffee.ingredient,
                        style:
                            TextStyle(color: Color(0xff919293), fontSize: 11),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Color(0xffd17842),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xff242931),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
