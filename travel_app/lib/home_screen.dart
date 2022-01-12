import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/theme/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: getAppBar(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getAppBar() {
    return Container();
  }

  Widget getFooter() {
    return Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: appFooterColor,
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 20),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/home_active.svg",
                  width: 20, height: 20),
            ],
          ),
        ));
  }
}
