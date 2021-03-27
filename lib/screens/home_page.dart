import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:folkdev_assignment/common_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Stack(
      children: [
        Align(
          alignment: Alignment(-1.0, -1.2),
          child: Transform.rotate(
            angle: -49.6,
            child: SvgPicture.asset(
              'assets/Circles.svg',
              height: 400.0,
              fit: BoxFit.fill,
              color: Colors.white,
            ),
          )
        ),
        Positioned(
          left: 25.0,
          top: 40.0,
          child: Container(
            width: 110,
            child: Text(
              'Control Panel',
              style: TextStyle(fontSize: 28.0, color: Colors.white)
            ),
          ),
        ),
        Positioned(
          right: 10.0,
          top: 45.0,
          child: Image.asset(
            'assets/user.png',
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
            child: Stack(
              children: [
                Positioned(
                  top: 20.0,
                  left: 25.0,
                  child: Text(
                    'All Rooms', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)
                  ),
                ),
                Positioned(
                  child: GridView(
                    padding: EdgeInsets.all(100.0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.9,
                      // mainAxisExtent: 50.0,
                      crossAxisSpacing: 30.0,
                      mainAxisSpacing: 5.0,
                    ),
                    children: [
                      Container(
                        height: 20.0,
                        child: SvgPicture.asset(
                          'assets/bed.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        height: 20.0,
                        color: Color(0xFFFFFFF),
                        child: SvgPicture.asset(
                          'assets/bed.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
    );
  }
}
