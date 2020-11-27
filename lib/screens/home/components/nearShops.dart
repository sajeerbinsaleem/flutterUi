import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/home/components/gridTileProducts.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class NearShops extends StatelessWidget {
  const NearShops({
    this.tagval,
  });

  final String tagval;

  @override
  Widget build(BuildContext context) {
   return Column(
      children: [
          SizedBox(height: getProportionateScreenWidth(20)),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: SectionTitle(title: "Kannur Store (2km)", press: () {alert(context);}),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: getProportionateScreenWidth(150),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List<Widget>.generate(demoProducts.length, (index) {
                return GridTilesProducts(
                  name: demoProducts[index].title,
                  imageUrl: demoProducts[index].images[0],
                  slug: 'slug',
                  price: demoProducts[index].price,
                );
              })
            ),
          )
      ],
    );
        
    
  }
}

alert(context){
  Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  // _showToast(context);
  print('see more tapped');
}
// void _showToast(BuildContext context) {
//     final scaffold = Scaffold.of(context);
//     scaffold.showSnackBar(
//       SnackBar(
//         content: const Text('Added to favorite'),
//         action: SnackBarAction(
//             label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
//       ),
//     );
//   }