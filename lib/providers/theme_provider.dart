import 'package:flutter/material.dart';
import 'package:preferences_app/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeData currentTheme;

  ThemeProvider({
    required bool isDarkMode
  }): currentTheme = isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme;



  setLihtMode(){
    currentTheme = AppTheme.lightTheme;
    notifyListeners();
  }

  setDarkMode(){
    currentTheme = AppTheme.darkTheme;
    notifyListeners();
  }

}