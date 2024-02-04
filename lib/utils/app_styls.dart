import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFonbtSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle styleBold16(BuildContext context) => TextStyle(
        color: const Color(0xFF4EB7F2),
        fontSize: getResponsiveFonbtSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
        height: 0,
      );
  static TextStyle styleMedium16(BuildContext context) => TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveFonbtSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
        height: 0,
      );
  static TextStyle styleMedium20(BuildContext context) => TextStyle(
        color: Colors.white,
        fontSize: getResponsiveFonbtSize(context, fontSize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
        height: 0,
      );
  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveFonbtSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
        height: 0,
      );
  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveFonbtSize(context, fontSize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
        height: 0,
      );

  static TextStyle styleRegular12(BuildContext context) => TextStyle(
        color: const Color(0xFFAAAAAA),
        fontSize: getResponsiveFonbtSize(context, fontSize: 12),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
        height: 0,
      );

  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
        color: const Color(0xFF4DB7F2),
        fontSize: getResponsiveFonbtSize(context, fontSize: 24),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
        height: 0,
      );

  static TextStyle styleRegular14(BuildContext context) => TextStyle(
        color: const Color(0xFFAAAAAA),
        fontSize: getResponsiveFonbtSize(context, fontSize: 14),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
        height: 0,
      );
  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
        color: Colors.white,
        fontSize: getResponsiveFonbtSize(context, fontSize: 18),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
        height: 0,
      );
}

double getResponsiveFonbtSize(BuildContext context,
    {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  /*print(
      'lower limit $lowerLimit ,upper limit $upperLimit , responsiveFontSize $responsiveFontSize  final font size =${responsiveFontSize.clamp(lowerLimit, upperLimit)}');*/
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  //double width=MediaQuery.of(context).size.width;
  double width = MediaQuery.sizeOf(context).width;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePhysicalRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePhysicalRatio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
