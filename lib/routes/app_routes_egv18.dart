import 'package:flutter/material.dart';
import 'package:flutter_examen_egv18/models/models_egv18.dart';
import 'package:flutter_examen_egv18/screens/screens.dart';


class AppRoutes {
  static const initialRoute = 'home';

  //MenuOptions y MenuOption no pueden coincidir los nombres
  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      icon: Icons.arrow_right_alt_rounded,
      name: 'home',
      screen: HomeScreen()
    ),
  ];

  static Map<String, Widget Function(BuildContext) > getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for(final option in MenuOptions){
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings){      
    return MaterialPageRoute(
      builder: (context) => HomeScreen()
    );      
  }
}