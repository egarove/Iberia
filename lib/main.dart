import 'dart:ui';

import 'package:flutter_examen_egv18/routes/app_routes_egv18.dart';
import 'package:flutter_examen_egv18/screens/screens.dart';
import 'package:flutter_examen_egv18/theme/app_theme_egv18.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith( //para poder desplazar pinchando con el raton en windows
        dragDevices: {
          PointerDeviceKind.mouse,
        }
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Listview2Screen(),
      //initialRoute: 'home',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(), //routes\app_routes.dart
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme
    );
  }
}