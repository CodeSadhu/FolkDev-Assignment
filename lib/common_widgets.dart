import 'package:flutter/material.dart';

Color appBackgroundColor = Color(0xFF0A4DA2);
Color popUpBackground = Color(0xFFF6F8FB);
Color yellowTheme = Color(0xFFFFA939);
Color darkBlueTheme = Color(0xFF002D67);

final TextStyle yellowText = TextStyle(
  color: yellowTheme,
);

final TextStyle darkBlueText = TextStyle(
  color: darkBlueTheme,
);

List<String> roomImages = [
  'assets/bed.svg',
  'assets/room.svg',
  'assets/kitchen.svg',
  'assets/bathtube.svg',
  'assets/house.svg',
  'assets/balcony.svg'
];

List<String> roomTypes = [
  'Bed room',
  'Living room',
  'Kitchen',
  'Bathroom',
  'Outdoor',
  'Balcony'
];

List<String> lightCounts = [
  '4 Lights',
  '2 Lights',
  '5 Lights',
  '1 Lights',
  '5 Lights',
  '2 Lights',
];
class HomePageGridView {
  final String gridImage;
  final String roomType;
  final String lightCount;

  HomePageGridView({
    this.gridImage,
    this.roomType,
    this.lightCount
  });
}

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}
