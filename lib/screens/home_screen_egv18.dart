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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.red,
          child: Center(
             child: Column(children: [
              Image(image: AssetImage("assets/logo_grande.png"), width: 200),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Hola, te damos la bienvenida a  Iberia", style: TextStyle(fontSize: 30, color: Colors.white),),
              ),
              SizedBox(height: 50,),
              Text("Inicia Sesion", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              Container(
                width: 400,
                color: Colors.white,
                child: Form(child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      width: 300,
                      child: TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: "Email o Número Iberia Club",
                          
                        ),            
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 300,
                      child: TextFormField(
                        autofocus: true,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Contraseña"
                        ),            
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                    child: SizedBox(
                      child: Center(child: Text("Iniciar Sesion")),
                      height: 50,
                      width: 150,
                    ),
                    onPressed: () => {},
                    ),
                    SizedBox(height:30,),
                    Text("¿Has olvidado tu contraseña?", style: TextStyle(fontWeight: FontWeight.bold),),
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
                width: 400,
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
              ),     
              SizedBox(height: 20,)    
             ],),
          ),
        ),
      ),
    );
  }
}