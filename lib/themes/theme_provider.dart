import "package:flutter/material.dart";
import "package:music_app/themes/dark_mode.dart";
import "package:music_app/themes/light_mide.dart";
import "package:provider/provider.dart";

class ThemeProvider extends ChangeNotifier{
  // initially light_mide
  ThemeData _themeData=lightmode;
  //get theme
  ThemeData get themeData=>_themeData;
  //is dark mode
  bool get isDarkMode=>_themeData==darkmode;
  // set theme
  set themeData(ThemeData themeData){
    _themeData=themeData;
    // updata ui
    notifyListeners();
  }
  // toggle theme
  void toggleTheme(){
    if(_themeData==lightmode){
      themeData=darkmode;
    }
    else{
      themeData=lightmode;
    }
  }
}