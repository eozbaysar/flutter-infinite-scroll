import 'package:flutter/material.dart';

class AppTheme {
  static get theme {
    return ThemeData(
      splashColor: Colors.transparent ,
      primaryColor: Colors.cyan[300],
      accentColor: AppTheme.teak[50],
      buttonColor: Colors.cyan[300],
      textSelectionColor: Colors.cyan[300],
      toggleableActiveColor: Colors.cyan[300],
      backgroundColor: solitude[50],
      cursorColor: AppTheme.safetyOrange[50],
      unselectedWidgetColor:AppTheme.lightGrey[50],
      inputDecorationTheme: InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppTheme.darkTangerine[50])),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppTheme.lightGrey[50])),
      ),
      textTheme: TextTheme(

          title: TextStyle(
              color: AppTheme.eclipse[50],
              fontSize: 15.0,
              fontWeight: FontWeight.bold
          ),

          button: TextStyle(
              color: AppTheme.eclipse[50],
              fontSize: 15.0,
            ),

          display1: TextStyle(
              fontSize: 14.0,
              color: AppTheme.white[50]),
      ),
    );
  }

  static const Map<int, Color> solitude = const <int, Color>{
    50: const Color(0xffF3F4F8)
  };
  static const Map<int, Color> red = const <int, Color>{
    50: const Color(0xffc03f38)
  };

  static const Map<int, Color> eclipse = const <int, Color>{
    50: const Color(0xff3C3C3C)
  };

  static const Map<int, Color> safetyOrange = const <int, Color>{
    50: const Color(0xffF78538)
  };

  static const Map<int, Color> darkTangerine = const <int, Color>{
    50: const Color(0xffFCB814)
  };

  static const Map<int, Color> lightGrey = const <int, Color>{
    50: const Color(0xffD0D0D0)
  };

  static const Map<int, Color> darkGreen = const <int, Color>{
    50: const Color(0xff27bf69)
  };

  static const Map<int, Color> darkRed = const <int, Color>{
    50: const Color(0xffcd0436)
  };


  static const Map<int, Color> tuna = const <int, Color>{
    50: const Color(0xff313133)
  };
  static const Map<int, Color> shark = const <int, Color>{
    50: const Color(0xff2A2A2C)
  };
  static const Map<int, Color> teak = const <int, Color>{
    50: const Color(0xffB39861)
  };
  static const Map<int, Color> white = const <int, Color>{
    50: const Color(0xffffffff)
  };
  static const Map<int, Color> grey = const <int, Color>{
    50: const Color(0xffaaafb4)
  };
  static const Map<int, Color> black = const <int, Color>{
    50: const Color(0xff000000),
    100: const Color(0x73000000),
    150 : const Color(0xff2f2f2f)
  };
}
