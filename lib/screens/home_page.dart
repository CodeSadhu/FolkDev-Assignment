import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:folkdev_assignment/common_widgets.dart';
import 'package:folkdev_assignment/screens/bed-room.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Stack(
      children: [
        Positioned(
          left: -160.0,
          top: -140.0,
          child: Transform.rotate(
            angle: -49.5,
            child: SvgPicture.asset(
              'assets/Circles.svg',
              height: 550.0,
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
              style: TextStyle(fontSize: SizeConfig.blockSizeVertical * 3.5, color: Colors.white)
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
                  top: 30.0,
                  child: Container(
                    height: SizeConfig.blockSizeVertical * 70,
                    width: SizeConfig.blockSizeHorizontal * 99,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: GridView.builder(
                      itemCount: roomImages.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.02,
                        crossAxisSpacing: 35.0,
                        mainAxisSpacing: 20.0,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          child: InkWell(
                            onTap: () {
                              if (index == 0)
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => BedRoom()));
                            },
                            child: Card(
                              elevation: 2.0,
                              shadowColor: Colors.grey.withOpacity(0.1),
                              color: Colors.white,
                              semanticContainer: false,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 20.0,
                                    left: 20.0,
                                    child: SvgPicture.asset(roomImages[index], height: SizeConfig.blockSizeVertical * 6.5),
                                  ),
                                  Positioned(
                                    top: 80.0,
                                    left: 20.0,
                                    child: Text(
                                      roomTypes[index],
                                      style: TextStyle(
                                        fontSize: SizeConfig.blockSizeVertical * 2.2,
                                        // fontWeight: FontWeight.w800
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 110.0,
                                    left: 20.0,
                                    child: Text(
                                      lightCounts[index],
                                      style: TextStyle(
                                        fontSize: SizeConfig.blockSizeVertical * 1.7,
                                        color: yellowTheme,
                                        // fontWeight: FontWeight.w800
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    ),
                  ),
                ),
                Positioned(
                  top: 20.0,
                  left: 25.0,
                  child: Text(
                    'All Rooms', style: TextStyle(fontSize: SizeConfig.blockSizeVertical * 2.5, fontWeight: FontWeight.bold, color: darkBlueTheme)
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
