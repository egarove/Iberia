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
                            Icon(Icons.message, size: 50,),
                            Text("Prensa Digital", style: TextStyle(fontSize: 20),),
                            Text("Tus periódicos y revistas favoritas", style: TextStyle(fontSize: 15),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Icon(Icons.messenger_outline_sharp,size: 50,),
                            Text("IBot", style: TextStyle(fontSize: 20)),
                            Text("Tu asistente virtual, ¿en que puedo ayudarte?", style: TextStyle(fontSize: 15))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Icon(Icons.hotel, size: 50,),
                            Text("Hoteles", style: TextStyle(fontSize: 20),),
                            Text("Encuentra la mejor opcion y descansa", style: TextStyle(fontSize: 15),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Icon(Icons.car_crash, size: 50,),
                            Text("Coches", style: TextStyle(fontSize: 20),),
                            Text("Desplazate con total libertad", style: TextStyle(fontSize: 15),)
                          ],
                        ),
                      ),
                    ),
                ]),
                SizedBox(height: 20,),
                    Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Icon(Icons.card_membership_outlined, size: 50,),
                            Text("Tarjetas de embarque", style: TextStyle(fontSize: 20),),
                            Text("Todas tus tarjetas en un solo lugar", style: TextStyle(fontSize: 15),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Icon(Icons.request_page_sharp, size: 50,),
                            Text("BoB", style: TextStyle(fontSize: 20),),
                            Text("Recogida de equipaje a domicilio", style: TextStyle(fontSize: 15),)
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