import 'package:flutter/material.dart';

import 'components/shopBody.dart';
import 'components/footer.dart';

class ShopHomeScreen extends StatelessWidget {
  static String routeName = "/shopHome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShopBody(),
      // bottomNavigationBar: Footer(),
    );
  }
}
