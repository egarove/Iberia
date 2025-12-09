import 'package:flutter/material.dart';

class EspaciosScreen extends StatelessWidget {
   
  const EspaciosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('IBERIA'),
      ),
      body: Center(
         child: Column(
           children: [
             Text('Espacios culturales que no te puedes perder'),
             Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Text("1. Parque Guell", style: TextStyle(backgroundColor: Colors.red)),
                            Text("98 actvidades")
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Text("2. Museo del Louvre", style: TextStyle(backgroundColor: Colors.red)),
                            Text("497 actvidades")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Text("3. Torre de Londres", style: TextStyle(backgroundColor: Colors.red)),
                            Text("298 actvidades")
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Text("4. Rijksmuseum", style: TextStyle(backgroundColor: Colors.red)),
                            Text("99 actvidades")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Card(
                    child: Column(
                      children: [
                        Text("5. Palacio Ducal, Venecia", style: TextStyle(backgroundColor: Colors.red)),
                        Text("227 actividades")
                      ],
                    ),
                  )
                ],
              ),
             )
           ],
         ),
      ),
    );
  }
}