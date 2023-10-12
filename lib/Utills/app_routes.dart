import 'package:festival_studio_app/Screen/festival_edit_screen.dart';
import 'package:festival_studio_app/Screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import '../Screen/home_screen.dart';

Map<String, WidgetBuilder> screenRoutes = {
  '/': (context) => SplashScreen(),
  'home':(context) => HomeScreen(),
  'edit':(context) => FestivalEditScreen(),
};
