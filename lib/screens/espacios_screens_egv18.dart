import 'package:flutter/material.dart';

class EspaciosScreen extends StatelessWidget {
   
  const EspaciosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Image(image: AssetImage("assets/logo_grande.png")),
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
                            Text("98 actvidades"),
                            Image.network("https://www.theconica.com/assets/cache/uploads/entorno/570x373/park-guell-barcelona.jpg", width: 50,)
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Text("2. Museo del Louvre", style: TextStyle(backgroundColor: Colors.red)),
                            Text("497 actvidades"),
                            Image.network("https://www.franciaturismo.net/es/wp-content/uploads/sites/17/paris-louvre-piramide-hd.jpg", width: 50)
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
                            Text("298 actvidades"),
                            Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Tower_of_London_viewed_from_the_River_Thames.jpg/1200px-Tower_of_London_viewed_from_the_River_Thames.jpg", width: 50)
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Text("4. Rijksmuseum", style: TextStyle(backgroundColor: Colors.red)),
                            Text("99 actvidades"),
                            Image.network("https://cdn-imgix.headout.com/media/images/dd53844d4840a22b17f273049f19f5b0-544-amsterdam-amsterdam--rijksmuseum-01.jpg", width: 50)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Card(
                    child: Column(
                      children: [
                        Text("5. Palacio Ducal, Venecia", style: TextStyle(backgroundColor: Colors.red)),
                        Text("227 actividades"),
                        Image.network("https://upload.wikimedia.org/wikipedia/commons/4/4d/%28Venice%29_Doge%27s_Palace_facing_the_sea.jpg", width: 50)
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