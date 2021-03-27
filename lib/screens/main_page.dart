import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:folkdev_assignment/common_widgets.dart';
import 'package:folkdev_assignment/screens/home_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int navIndex = 0;
  List <Widget> navbarPages = [
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: appBackgroundColor,
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/bulb.svg'),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/feather-home.svg'),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/feather-settings.svg'),
            label: ""
          ),
        ],
        elevation: 20.0,
      ),
    );
  }
}