import 'package:app_03/screens/Pantalla2.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( App03() );
}

class App03 extends StatelessWidget {
  const App03({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 03", ),
      ),
      body: Pantalla2()
      //  Column(
      //   children: [
      //     Text("Ejercicio 03", 
      //     style: TextStyle( fontSize: 35, color: Color.fromRGBO(19, 68, 29, 1) ) , 
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(18.0),
      //       child: edad_input(),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(18.0),
      //       child: profesion_input(),
      //     ),
      //     calcular_btn(context),

      //     imagenURL(),
      //     imagenLocal()
      //   ],
      // ),
    );
  }
}

TextEditingController edad = TextEditingController();
Widget edad_input (){
  return TextField(
    controller: edad,
    decoration: InputDecoration(
      label: Text("Ingresar edad", style: TextStyle( fontSize: 25),),
      border: OutlineInputBorder()
    ),
  );
}

TextEditingController profesion = TextEditingController();
Widget profesion_input(){
  return TextField(
    controller:  profesion,
    decoration: InputDecoration(
      label: Text("Ingresar Profesión", style: TextStyle(fontSize: 25),),
      border: OutlineInputBorder()
    ),
  );
}

Widget calcular_btn(context){
  return FilledButton(onPressed: ()=>calcularSalario(context),
   child: Text("Calcular", style: TextStyle(fontSize: 30),),
   style: ButtonStyle( backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 20, 173, 25)) ),
   );
}

//ALERT
void calcularSalario(context){
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: Text("SALARIO FINAL"),
      content: Text("El salalario final es ${salario()}"),
    );
  } );
}

double salario (){
  int _edad = int.parse( edad.text);
  double salario;
  
  if( _edad < 25){
    salario = 1000;
  }else if( _edad <= 25 && _edad>=40){
    salario =1500;
  }else{
    salario = 2000;
  }

  if (profesion.text == 'doctor'){
    salario = salario + 500;
  }else if( profesion.text == 'ingeniero'){
    salario= salario +300;
  }

  return salario;
}

//IMAGEN EXTERNA
Widget imagenURL(){
  return Image.network("https://4kwallpapers.com/images/walls/thumbs_3t/19846.png",
  width: 300,
  );
}

//IMAGEN LOCAL
Widget imagenLocal(){
  return Image.asset("assets/images/ima.jpg");
}