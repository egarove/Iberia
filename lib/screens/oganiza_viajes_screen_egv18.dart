import 'package:flutter/material.dart';

class OrganizaViajesScreen extends StatelessWidget {
   
  const OrganizaViajesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(image: AssetImage("assets/logo_grande.png"), width: 250,),
        backgroundColor: Color.fromARGB(255, 243, 73, 73),
      ),
      body: Center(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Expanded(
             child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Icon(Icons.message),
                            Text("Prensa Digital"),
                            Text("Tus periódicos y revistas favoritas")
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Icon(Icons.messenger_outline_sharp),
                            Text("IBot"),
                            Text("Tu asistente virtual, ¿en que puedo ayudarte?")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Icon(Icons.hotel),
                            Text("Hoteles"),
                            Text("Encuentra la mejor opcion y descansa")
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Icon(Icons.car_crash),
                            Text("Coches"),
                            Text("Desplazate con total libertad")
                          ],
                        ),
                      ),
                    ),
                ]),
                    Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Icon(Icons.card_membership_outlined),
                            Text("Tarjetas de embarque"),
                            Text("Todas tus tarjetas en un solo lugar")
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Icon(Icons.request_page_sharp),
                            Text("BoB"),
                            Text("Recogida de equipaje a domicilio")
                          ],
                        ),
                      ),
                    )
                  ],
                )
                  ],          
              
             ),
           ),
         )
      ),
    );
  }
}