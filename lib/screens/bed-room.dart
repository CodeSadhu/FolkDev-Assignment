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
              top: 130.0,
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