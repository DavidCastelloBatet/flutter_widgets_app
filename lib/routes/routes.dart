import 'package:flutter/material.dart';
import 'package:widgets_app/models/models.dart';
import 'package:widgets_app/screens/screens.dart';

class Routes {
  static String initialRoute = '/';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: '/',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'alert',
        name: 'Alertas - Alerts',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Tarjetas - Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'listview1',
        name: 'Listview Tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'Listview Tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list_alt_outlined)
  ];

  static Map<String, WidgetBuilder> getAppRoutes() {
    Map<String, WidgetBuilder> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll(({option.route: (context) => option.screen}));
    }
    return appRoutes;
  }

// Metode normal per definir les rutes
  // static Map<String, WidgetBuilder> getRoutes = {
  //   '/': (BuildContext context) => const HomeScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
