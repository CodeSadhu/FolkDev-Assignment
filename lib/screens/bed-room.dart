import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:folkdev_assignment/common_widgets.dart';

class BedRoom extends StatefulWidget {
  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {

  double _sliderValue = 0.0;
  bool lightBulb = false;
  int yellowBrightness = 900;
  bool lampBright = false;

  Color lampColor = Colors.yellow[600];

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
                  fontSize: SizeConfig.blockSizeVertical * 3.5,
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
                  fontSize: SizeConfig.blockSizeVertical * 3.5,
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
                  fontSize: SizeConfig.blockSizeVertical * 2.2,
                ),
              ),
            ),
            Positioned(
              right: 120.0,
              top: 112.0,
              child: Container(
                height: SizeConfig.blockSizeVertical * 2.5,
                width: SizeConfig.blockSizeHorizontal * 5,
                decoration: BoxDecoration(
                  // color: lampBright ? Colors.yellow[yellowBrightness] : appBackgroundColor,
                  color: lampColor,
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
              right: 0.0,
              left: 0.0,
              child: Container(
                height: 60.0,
                padding: EdgeInsets.only(left: 10.0),
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
                            Text("Main Light", style: TextStyle(fontSize: SizeConfig.blockSizeVertical * 1.7, color: darkBlueTheme)),
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
                            Text("Desk Lights", style: TextStyle(fontSize: SizeConfig.blockSizeVertical * 1.7, color: Colors.white)),
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
                            Text("Bed Lights", style: TextStyle(fontSize: SizeConfig.blockSizeVertical * 1.7)),
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
                child: Stack(
                  children: [
                    Positioned(
                      top: 20.0,
                      left: 20.0,
                      child: Text(
                        'Intensity',
                        style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 2.5,
                          color: darkBlueTheme
                        )
                      ),
                    ),
                    Positioned(
                      top: 65.0,
                      left: 30.0,
                      child: SvgPicture.asset(
                        'assets/solution2.svg'
                      ),
                    ),
                    lightBulb ? Positioned(
                      top: 60.0,
                      right: 30.0,
                      child: SvgPicture.asset(
                        'assets/solution.svg'
                      ),
                    ) : Positioned(
                      top: 65.0,
                      right: 30.0,
                      child: SvgPicture.asset(
                        'assets/solution2.svg'
                      ),
                    ),
                    Positioned(
                      top: 50.0,
                      left: 50.0,
                      child: SliderTheme(
                        data: SliderThemeData(
                          thumbColor: Colors.white,
                          trackHeight: 1.5,
                          trackShape: RoundedRectSliderTrackShape(),
                          activeTrackColor: Colors.yellow[600],
                          minThumbSeparation: 20.0,
                        ),
                        child: Container(
                          width: SizeConfig.blockSizeHorizontal * 77,
                          child: Slider(
                            min: 0,
                            max: 100.0,
                            value: _sliderValue,
                            onChanged: (val) {
                              setState(() {
                                _sliderValue = val;
                              });
                              if (_sliderValue >= 60.0) {
                                setState(() {
                                  lightBulb = true;
                                });
                              }
                              else lightBulb = false;
                              if (_sliderValue >= 30) {
                                setState(() {
                                  lampBright = true;
                                  yellowBrightness -= 100;
                                });
                              }
                              else if (_sliderValue < 30) {
                                setState(() {
                                  lampBright = false;
                                  yellowBrightness += 100;
                                });
                              }
                            },
                            divisions: 6,
                            inactiveColor: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100.0,
                      left: 20.0,
                      child: Text(
                        'Colors',
                        style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 2.5,
                          color: darkBlueTheme
                        )
                      ),
                    ),
                    Positioned(
                      top: 140.0,
                      left: 20.0,
                      child: Container(
                        height: SizeConfig.blockSizeVertical * 6,
                        width: SizeConfig.blockSizeHorizontal * 80,
                        child: ListView.custom(
                          scrollDirection: Axis.horizontal,
                          childrenDelegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return Row(
                                children: [
                                  InkWell(
                                    child: Container(
                                      height: SizeConfig.blockSizeVertical * 5,
                                      width: SizeConfig.blockSizeHorizontal * 8,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: lampColors[index],
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        lampColor = lampColors[index];
                                      });
                                    },
                                  ),
                                  SizedBox(width: 15.0),
                                  (index == lampColors.length - 1)
                                  ? Container(
                                    height: SizeConfig.blockSizeVertical * 5,
                                    width: SizeConfig.blockSizeHorizontal * 8,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        'assets/plus.svg',
                                      ),
                                    ),
                                  )
                                  : Container(),
                                ],
                              );
                            },
                            childCount: lampColors.length
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 265.0,
              right: 20.0,
              child: Container(
                height: 35.0,
                width: 35.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/power-icon.svg',
                    height: 20.0,
                  ),
                ),
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