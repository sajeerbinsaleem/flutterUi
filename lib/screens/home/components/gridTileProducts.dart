import 'package:flutter/material.dart';
import '../../../size_config.dart';

class GridTilesProducts extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String slug;
  final double  price;
   bool fromSubProducts = false;

  GridTilesProducts(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      @required this.slug,
      @required this.price,
      this.fromSubProducts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        /* if (fromSubProducts) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductsScreen(
                      slug: "products/?page=1&limit=12&category=" + slug,
                      name: name,
                    )),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategoryScreen(
                      slug: slug,
                    )),
          );
        }*/
        print('product tapped');
      },
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.1),
              blurRadius: 5.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              // offset: Offset(
              //   5.0, // Move to right 10  horizontally
              //   5.0, // Move to bottom 10 Vertically
              // ),
            )
          ],
        ),
        child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            // shadowColor: Colors.black,
            elevation: 0,
            child: Center(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    imageUrl,
                    width: getProportionateScreenHeight(120),
                    height: getProportionateScreenHeight(100),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                    child: Text(
                        (name.length <= 40 ? name : name.substring(0, 40)),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xFF444444),
                            fontFamily: 'Roboto-Light.ttf',
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Text("₹  ${(price != null) ? price : 'Unavailable'}",
                        style: TextStyle(
                            color: (price != null)
                                ? Color(0xFFf67426)
                                : Color(0xFF0dc2cd),
                            fontFamily: 'Roboto-Light.ttf',
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
