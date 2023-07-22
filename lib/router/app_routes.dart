import 'package:app_flutter_component_v2/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption> [
    MenuOption(route: 'home', icon: Icons.home_max_sharp, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_alt, name: 'Listview1 Screen', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt, name: 'Listview2 Screen', screen: const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alert Screen', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Card Screen', screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
