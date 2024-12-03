import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(
        children: [
          
          Positioned.fill(child: 
            Image.network("https://4kwallpapers.com/images/walls/thumbs_3t/19836.jpg",
            fit: BoxFit.cover,
            )
          ),

          Center(
            child: Column(
              children: [
                Text("Pantalla2", style: TextStyle( fontSize: 30) ,),
                FilledButton(onPressed: ()=>(), child: Text("Hola")),
              ],
            ),
          )
        ],
      ),
    );
  }
}