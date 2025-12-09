import 'package:flutter/material.dart';
import 'package:flutter_examen_egv18/routes/app_routes_egv18.dart';
import 'package:flutter_examen_egv18/screens/screens.dart';

class ListViewScreen extends StatefulWidget {
   
  const ListViewScreen({Key? key}) : super(key: key);



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
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 40,),
            ElevatedButton(              
                child: SizedBox(
                  child: Center(child: Text("RESERVAS")),
                  width: double.infinity,
                  height: 50,                  
                ),
                onPressed: () {
                  displayDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: const Color.fromARGB(255, 150, 18, 18), //color de texto/icono
                  elevation: 10)
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                child: SizedBox(
                  child: Center(child: Text("ORGANIZA TU VIAJE")),
                  width: double.infinity,
                  height: 50,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => OrganizaViajesScreen(),
                    ),);         
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: const Color.fromARGB(255, 150, 18, 18), //color de texto/icono
                  elevation: 10),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                child: SizedBox(
                  child: Center(child: Text("ESPACIOS CULTURALES")),
                  width: double.infinity,
                  height: 50,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => EspaciosScreen(),
                    ),);         
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: const Color.fromARGB(255, 150, 18, 18), //color de texto/icono
                  elevation: 10)
              ),
          ],
        ),
      )
    );
  }
  
  void displayDialog(BuildContext context) {
    print("se ha pulsado Reservas");
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
              Image(image: AssetImage("assets/logo_grande.png"), width: 250,),
            ],
          ),
          actions: [
            TextButton( //solo podemos salir del alert pulsando en el boton
              onPressed: () => Navigator.pop(context),
              child: Text("Cerrar"), 
        )           
          ],
        );
      }
    );
  }
}