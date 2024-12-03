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
        title: Text("Ejercicio 03"),
      ),
      body: Column(
        children: [
          Text("Ejercicio 03"),
          edad_input(),
          profesion_input(),
          calcular_btn(context)
        ],
      ),
    );
  }
}

TextEditingController edad = TextEditingController();
Widget edad_input (){
  return TextField(
    controller: edad,
  );
}

TextEditingController profesion = TextEditingController();
Widget profesion_input(){
  return TextField(
    controller:  profesion,
  );
}

Widget calcular_btn(context){
  return FilledButton(onPressed: ()=>calcularSalario(context), child: Text("Calcular"));
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
