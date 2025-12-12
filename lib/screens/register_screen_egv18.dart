import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examen_egv18/screens/home_screen_egv18.dart';
import 'package:flutter_examen_egv18/widgets/widgets.dart';

class RegisterScreen extends StatefulWidget {
   
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

    final Map<String,String> formData = {
      'nombre': 'invitado',
      'primer_apellido' : 'invitado',
      'segundo-apellido' : 'invitado',
      'email' : 'invitado@gmail.com',
      'password' : '1234',
    };


  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();   
    
    

    bool _termsAccepted = false;

    return Scaffold(
      appBar: AppBar(
        title: Image(image: AssetImage("assets/logo_grande.png"), width: 250,),
        backgroundColor: Color.fromARGB(255, 243, 73, 73),
      ),
      body: Container(
        height: 10000,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [    
                CustomTextFormField(
                  helperText: "",
                  hintText: "Correo electrónico",
                  labelText: "Email",
                  minCharacters: 1,
                  keyboardType: TextInputType.emailAddress,
                  formValues: formData,
                  formProperty: 'email',
                ),
                SizedBox(height: 15,),
                CustomTextFormField(
                  helperText: "",
                  hintText: "Contraseña",
                  labelText: "Contraseña",
                  minCharacters: 6,
                  obscureText: true,
                  formValues: formData,
                  formProperty: 'password',
                ),  
                SizedBox(height: 15,),
                CustomTextFormField(
                  helperText: "",
                  hintText: "Nombre",
                  labelText: "Nombre",
                  minCharacters: 6,
                  formValues: formData,
                  formProperty: 'nombre',
                ), 
                SizedBox(height: 15,),
                CustomTextFormField(
                  helperText: "",
                  hintText: "Primer Apellido",
                  labelText: "Primer Apellido",
                  minCharacters: 6,
                  formValues: formData,
                  formProperty: 'primer_apellido',
                ),
                SizedBox(height: 15,),
                CustomTextFormField(
                  helperText: "",
                  hintText: "Segundo Apellido (opcional)",
                  labelText: "Segundo Apellido",
                  minCharacters: 0,
                  formValues: formData,
                  formProperty: 'segundo_apellido',
                ), 
                Container(child: Row(
                  children: [
                    Text("Tengo mas de 18 años"),
                    Checkbox(
                  value: _termsAccepted, 
                  onChanged:  (value) {
                    _termsAccepted = value ?? true;
                    setState(() {
                
                    });
                  }
                ),
                  ],
                ),),
                SizedBox(height: 20,),
                Container(child: Row(
                  children: [
                    Expanded(child: Text("Al registrarme acepto los Terminos y condiciones del Programa Iberia Club y la Politica de Privacidad.")),
                    Checkbox(value: _termsAccepted, onChanged: (value){
                      _termsAccepted = value ?? true;
                      setState(() {                      
                      });
                    })
                  ],
                ),),
                SizedBox(height: 20,),
                Container(child: Row(
                  children: [
                    Expanded(
                      child: Text("Consiento que iberia utilice mis datos para remitirme comunicaciones diseñadas y pensadas solo para mi"+
                      " de promociones de productos y/o servicios de Iberia y de los partners del programa Iberia Club, y de otras"+
                      " sociedades del Grupo IAG"),
                    ),
                    Checkbox(value: _termsAccepted, onChanged: (value){
                      _termsAccepted = value ?? true;
                      setState(() {
                        
                      });
                    })
                  ],
                ),),
                SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 214, 28, 28),
                    foregroundColor: Colors.white
                  ),
                  child: SizedBox(
                    child: Center(child: Text("Enviar")),
                    height: 50,
                    width: double.infinity,                  
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode()); //cuando le demos a "enviar" se quita el teclado
                    if( !myFormKey.currentState!.validate() && _termsAccepted ){
                      print('Formulario no valido');
                    } else{
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => HomeScreen(
                          //formData: formData
                        ),
                      ),);
                    }
                    print(formData);
                  }
                )       
              ],          
            ),
          )
        ),
      ),
    );
  }
}