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
        title: Text("Input Forms"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [    
              CustomTextFormField(
                helperText: "",
                hintText: "Correo electrónico",
                labelText: "",
                minCharacters: 1,
                keyboardType: TextInputType.emailAddress,
                formValues: formData,
                formProperty: 'email',
              ),
              SizedBox(height: 30,),
              CustomTextFormField(
                helperText: "",
                hintText: "Contraseña",
                labelText: "",
                minCharacters: 6,
                obscureText: true,
                formValues: formData,
                formProperty: 'password',
              ),  
              CustomTextFormField(
                helperText: "",
                hintText: "Nombre",
                labelText: "",
                minCharacters: 6,
                formValues: formData,
                formProperty: 'nombre',
              ), 
              CustomTextFormField(
                helperText: "",
                hintText: "Primer Apellido",
                labelText: "",
                minCharacters: 6,
                formValues: formData,
                formProperty: 'primer_apellido',
              ),
              CustomTextFormField(
                helperText: "",
                hintText: "Segundo Apellido (opcional)",
                labelText: "",
                minCharacters: 0,
                formValues: formData,
                formProperty: 'segundo_apellido',
              ), 
              SizedBox(height: 50,),
              Container(child: Row(
                children: [
                  Text("Tengo mas de 18 años"),
                  Checkbox(value: _termsAccepted, onChanged: (value){
                    _termsAccepted = value ?? true;
                    setState(() {                      
                    });
                  })
                ],
              ),),
              Container(child: Row(
                children: [
                  Text("Al registrarme acepto los Terminos y condiciones del Programa Iberia Club y la Politica de Privacidad."),
                  Checkbox(value: _termsAccepted, onChanged: (value){
                    _termsAccepted = value ?? true;
                    setState(() {                      
                    });
                  })
                ],
              ),),
              Container(child: Row(
                children: [
                  Text("Consiento que iberia utilice mis datos para remitirme comunicaciones diseñadas y pensadas solo para mi"+
                  " de promociones de productos y/o servicios de Iberia y de los partners del programa Iberia Club, y de otras"+
                  " sociedades del Grupo IAG"),
                  Checkbox(value: _termsAccepted, onChanged: (value){
                    _termsAccepted = value ?? true;
                    setState(() {
                      
                    });
                  })
                ],
              ),),
              ElevatedButton(
                child: SizedBox(
                  child: Center(child: Text("Enviar")),
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
    );
  }
}