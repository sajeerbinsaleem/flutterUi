import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/images/vegs.jpg", "text": "Vegetable"},
      {"icon": "assets/images/stationary.png", "text": "Stationary"},
      {"icon": "assets/images/granle.png", "text": "Staples & grains"},
      {"icon": "assets/images/bakery.jpg", "text": "bakery& snacks"},
      {"icon": "assets/images/fruits.jpg", "text": "Fruits"},
    ];
    return Container(
     height: getProportionateScreenWidth(120), 
     child: Padding(
        padding: EdgeInsets.only(top:getProportionateScreenWidth(20),left:getProportionateScreenWidth(20),right:getProportionateScreenWidth(20)),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            categories.length,
            (index) => CategoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {},
            ),
          )
        )
      )
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(75),
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              // width: getProportionateScreenWidth(105),
              decoration: BoxDecoration(
                // color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(icon),
            ),
            SizedBox(height: 5),
            Text(text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
