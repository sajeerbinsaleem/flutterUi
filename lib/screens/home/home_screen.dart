import 'package:flutter/material.dart';

import 'components/body.dart';
import 'components/footer.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      // bottomNavigationBar: Footer(),
    );
  }
}
