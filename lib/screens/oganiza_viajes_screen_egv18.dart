import 'package:flutter/material.dart';

class OrganizaViajesScreen extends StatelessWidget {
   
  const OrganizaViajesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IBERIA"),
      ),
      body: Center(
         child: Expanded(
           child: Column(
            children: [
              Row(
                children: [
                  Card(
                    child: Column(
                      children: [
                        Icon(Icons.message),
                        Text("Prensa Digital"),
                        Text("Tus periódicos y revistas favoritas")
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Icon(Icons.messenger_outline_sharp),
                        Text("IBot"),
                        Text("Tu asistente virtual, ¿en que puedo ayudarte?")
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Card(
                    child: Column(
                      children: [
                        Icon(Icons.hotel),
                        Text("Hoteles"),
                        Text("Encuentra la mejor opcion y descansa")
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Icon(Icons.car_crash),
                        Text("Coches"),
                        Text("Desplazate con total libertad")
                      ],
                    ),
                  ),
              ]),
                  Row(
                children: [
                  Card(
                    child: Column(
                      children: [
                        Icon(Icons.card_membership_outlined),
                        Text("Tarjetas de embarque"),
                        Text("Todas tus tarjetas en un solo lugar")
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Icon(Icons.request_page_sharp),
                        Text("BoB"),
                        Text("Recogida de equipaje a domicilio")
                      ],
                    ),
                  )
                ],
              )
                ],          
            
           ),
         )
      ),
    );
  }
}