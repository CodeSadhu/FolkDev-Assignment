import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:folkdev_assignment/common_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final Widget backgroundCircles = SvgPicture.asset(
    'assets/Circles.svg',
    height: 400.0,
    fit: BoxFit.fill,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: appBackgroundColor,
      body: Container(
      // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      // margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment(-1.0, -1.2),
            child: Transform.rotate(
              angle: -49.6,
              child: backgroundCircles
            )
          ),
          Positioned(
            left: 25.0,
            top: 60.0,
            child: Container(
              width: 100,
              child: Text(
                'Control Panel',
                style: TextStyle(fontSize: 28.0, color: Colors.white)
              ),
            ),
          ),
          Positioned(
            right: 10.0,
            top: 55.0,
            child: SvgPicture.asset(
              'assets/user.svg',
              fit: BoxFit.fill,
              // color: Colors.black.withOpacity(0.0),
              // colorBlendMode: BlendMode.darken,
            ),
          ),
          Positioned(
            top: 150.0,
            // left: 20.0,
            child: Container(
              decoration: BoxDecoration(
                color: popUpBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )
              ),
              height: SizeConfig.blockSizeVertical * 85,
              width: SizeConfig.blockSizeHorizontal * 100,
              child: Center(child: Text('asasa')),
            ),
          )
        ],
      ),
    ));
  }
}
