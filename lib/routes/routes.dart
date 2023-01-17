import 'package:flutter/material.dart';
import 'package:widgets_app/models/models.dart';
import 'package:widgets_app/screens/screens.dart';

class Routes {
  static String initialRoute = '/';

  static Map<String, WidgetBuilder> getRoutes = {
    '/': (BuildContext context) => const HomeScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
