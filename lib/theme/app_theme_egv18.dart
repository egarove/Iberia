import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color.fromARGB(255, 230, 36, 36);
  static const Color secundary = Color.fromARGB(255, 233, 231, 231);

  //creo una variable con los colores que quiero usar
  static final ThemeData lightTheme = ThemeData.light().copyWith(
        
        appBarTheme: AppBarTheme(
          color: primary,
          elevation: 20,
          foregroundColor: Colors.white, //flecha y letras del appBar blanco
        ),
        listTileTheme: ListTileThemeData(
          iconColor: primary, //pongo los iconos de las listas orange
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: AppTheme.primary),
        ),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          elevation: 5,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: primary,
          )
        ),

        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyle( color: primary ),
          enabledBorder: OutlineInputBorder( //por defecto
            borderSide: BorderSide( color: const Color.fromARGB(255, 33, 65, 153) ),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), topRight: Radius.circular(0)),
          ),
          focusedBorder: OutlineInputBorder( //cuando pulsamos
            borderSide: BorderSide( color: primary ),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          border: OutlineInputBorder( //por defecto (no se la difrencia)
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150), topRight: Radius.circular(150)),
          ),
        )
  );
}