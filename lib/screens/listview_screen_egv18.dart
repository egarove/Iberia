import 'package:flutter/material.dart';
import 'package:flutter_examen_egv18/routes/app_routes_egv18.dart';
import 'package:flutter_examen_egv18/screens/screens.dart';

class ListViewScreen extends StatefulWidget {
   
  const ListViewScreen({Key? key}) : super(key: key);


  void displayDialog(BuildContext context){
    print("se ha pulsado");
    showDialog(
      barrierDismissible: false, // false -> al pulsar fuera del alert NO se cierra
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text("Aviso"),
          content: Column(
            mainAxisSize: MainAxisSize.min, //para que el boton de alerta ocupe el minimo posible
            children: [
              Text("El sistema de reservas esta deshabilitado en estos momentos"),
              SizedBox(height: 20),
              //NetworkImage("logo_iberia")
            ],
          ),
          actions: [
            TextButton( //solo podemos salir del alert pulsando en el boton
              onPressed: () => Navigator.pop(context),
              child: Text("Aceptar"), 
        )           
          ],
        );
      }
    );
  }

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido/a"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
            leading: Icon(AppRoutes.MenuOptions[index].icon),
            title: Text(AppRoutes.MenuOptions[index].name),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => HomeScreen(),);
              // Navigator.pushReplacement(context, route); //push añade la flecha para poder volver atras
              // Navigator.pushReplacement(context, route); //pushReplacement borra la flecha para poder volver atras
              Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route); //me permite usar solo el nombre de la ruta
            },
          ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: AppRoutes.MenuOptions.length,
      )
    );
  }
}