import 'package:flutter/material.dart';
import 'package:flutter_application_1/constraints.dart';
import 'package:flutter_application_1/screens/home/components/body.dart';
import 'package:flutter_svg/svg.dart';

import 'components/my_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: buildAppBar(),
      body: Body(),
    bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: (){},
      ),
    );
  }
}
