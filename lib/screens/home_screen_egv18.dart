import 'package:flutter/material.dart';
import 'package:flutter_examen_egv18/screens/listview_screen_egv18.dart';
import 'package:flutter_examen_egv18/screens/register_screen_egv18.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Column(children: [
          //NetworkImage("https://i.pinimg.com/736x/7a/0e/e1/7a0ee10240a467544945f3d95065e99a.jpg") 
          Text("Hola, te damos la bienvenida a  Iberia"),
          Text("Inicia Sesion"),
          Container(
            child: Form(child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Email o Número Iberia Club"
                  ),            
                ),
                TextFormField(
                  autofocus: true,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Contraseña"
                  ),            
                ),
                ElevatedButton(
                child: SizedBox(
                  child: Center(child: Text("Iniciar Sesion")),
                  width: double.infinity,
                ),
                onPressed: () => {},
                ),
                Text("¿Has olvidado tu contraseña?")
              ],
            )),
          ),
          ElevatedButton(
            child: SizedBox(
              child: Center(child: Row(
                children: [
                  Text("Continuar como invitado"),
                  Icon(Icons.arrow_right_rounded)
                ],
              )),
                width: double.infinity,
              ),
            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ListViewScreen(),
               ),)
            },
          ),
          Container(
            child: Form(child: Column(
              children: [
                Icon(Icons.supervised_user_circle),
                Text("¿Quieres disfrutar de las ventajas de pertenecer a Iberia?"),
                ElevatedButton(
                child: SizedBox(
                  child: Center(child: Row(
                    children: [
                      Text("Registrate"),
                      Icon(Icons.arrow_right_rounded)
                    ],
                  )),
                    width: double.infinity,
                  ),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                  ),)
                },
              ),
              ],
            )),
          )          
         ],),
      ),
    );
  }
}