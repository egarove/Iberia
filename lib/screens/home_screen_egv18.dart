import 'package:flutter/material.dart';
import 'package:flutter_examen_egv18/screens/listview_screen_egv18.dart';
import 'package:flutter_examen_egv18/screens/register_screen_egv18.dart';

class HomeScreen extends StatefulWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
           child: Column(children: [
            Image(image: AssetImage("assets/logo_grande.png"), width: 200),
            Text("Hola, te damos la bienvenida a  Iberia", style: TextStyle(fontSize: 30, color: Colors.white),),
            SizedBox(height: 50,),
            Text("Inicia Sesion", style: TextStyle(color: Colors.white)),
            Container(
              color: Colors.white,
              child: Form(child: Column(
                children: [
                  SizedBox(height: 20,),
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "Email o Número Iberia Club"
                    ),            
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    autofocus: true,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Contraseña"
                    ),            
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                  child: SizedBox(
                    child: Center(child: Text("Iniciar Sesion")),
                    width: double.infinity,
                  ),
                  onPressed: () => {},
                  ),
                  SizedBox(height:30,),
                  Text("¿Has olvidado tu contraseña?"),
                  SizedBox(height: 30,),
                ],
              )),
            ),
            SizedBox(height: 20,),
            Container(
              child: ElevatedButton(
                child: SizedBox(
                  child: Center(child: Row(
                    children: [
                      Text("Continuar como invitado"),
                      Icon(Icons.arrow_right_rounded)
                    ],
                  )),
                    width: 200,
                    height: 50,
                  ),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ListViewScreen(),
                   ),)
                },
              ),
            ),
            SizedBox(height: 20,),
            Container(
              color: Colors.white,
              child: Form(child: Column(
                children: [
                  Icon(Icons.supervised_user_circle),
                  SizedBox(height: 20,),
                  Text("¿Quieres disfrutar de las ventajas de pertenecer a Iberia?"),
                  SizedBox(height: 20,),
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(),
                    child: SizedBox(
                      child: Center(child: Row(
                        children: [
                          Text("Registrate"),
                          Icon(Icons.arrow_right_rounded)
                        ],
                      )                   
                      ),
                      width: 100,
                        height: 50,
                      ),                    
                    onPressed: () => {
                      Navigator.pushReplacement(context, MaterialPageRoute( //replacement para no poder volver
                              builder: (context) => RegisterScreen(),
                      ),)
                    },
                    ),
                  ),
                SizedBox(height: 20,),
                ],
              )),
            )          
           ],),
        ),
      ),
    );
  }
}