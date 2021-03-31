import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:folkdev_assignment/common_widgets.dart';

class BedRoom extends StatefulWidget {
  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: appBackgroundColor,
      body: Container(
        child: Stack(
          children: [
            Positioned(
              left: -110.0,
              top: -80.0,
              child: Transform.rotate(
                angle: -50.2,
                child: SvgPicture.asset(
                  'assets/Circles.svg',
                  height: 500.0,
                  fit: BoxFit.fill,
                  color: Colors.white,
                ),
              )
            ),
            Positioned(
              top: 60.0,
              left: 10.0,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.white,
                icon: SvgPicture.asset('assets/back-arrow.svg'),
              )
            ),
            Positioned(
              left: 50.0,
              top: 65.0,
              child: Text(
                'Bed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              top: 95.0,
              child: Text(
                'Room',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              top: 140.0,
              child: Text(
                '4 Lights',
                style: TextStyle(
                  color: Colors.yellow[600],
                  fontSize: 18.0,
                ),
              ),
            ),
            Positioned(
              right: 120.0,
              top: 112.0,
              child: Container(
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle
                ),
              ),
            ),
            Positioned(
              right: 60.0,
              top: 0.0,
              child: SvgPicture.asset(
                'assets/lamp.svg',
              ),
            ),
            Positioned(
              top: 190.0,
              right: 20.0,
              left: 20.0,
              child: Container(
                height: 60.0,
                width: SizeConfig.blockSizeHorizontal * 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0)
                      ),
                      child: Container(
                        height: 60.0,
                        width: 130.0,
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 5.0),
                            SvgPicture.asset('assets/surface1.svg', height: 19.0),
                            SizedBox(width: 5.0),
                            Text("Main Light", style: TextStyle(fontSize: 14.0, color: darkBlueTheme)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Card(
                      color: Color(0xFF093B7B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0)
                      ),
                      child: Container(
                        height: 60.0,
                        width: 130.0,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 5.0),
                            SvgPicture.asset('assets/desk-light.svg', height: 19.0),
                            SizedBox(width: 5.0),
                            Text("Desk Lights", style: TextStyle(fontSize: 14.0, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Card(
                      // color: Color(0xFF093B7B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0)
                      ),
                      child: Container(
                        height: 60.0,
                        width: 130.0,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 5.0),
                            SvgPicture.asset('assets/bedIcon.svg', height: 19.0),
                            SizedBox(width: 5.0),
                            Text("Bed Lights", style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 280.0,
              child: Container(
                decoration: BoxDecoration(
                  color: popUpBackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )
                ),
                height: SizeConfig.blockSizeVertical * 70,
                width: SizeConfig.blockSizeHorizontal * 100,
                child: Center(child: Text("Stuff here")),
              ),
            ),
          ],
        ),
      ),
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