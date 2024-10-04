import 'package:flutter/material.dart';

class PantallaContador extends StatefulWidget {
  const PantallaContador ({super.key});

  @override
  State<PantallaContador> createState() => _PantallaContadorState();
}

class _PantallaContadorState extends State<PantallaContador> {

  int clickCounter = 0;
  //String click='Clicks';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title:const Center(
          child: Text('Pantalla Contador'), // Centrado aquí
          ),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('$clickCounter', style: const TextStyle( fontSize: 160, fontWeight: FontWeight.w100)),
              //Text('${click}', style: const TextStyle(fontSize: 25),)
              Text('Click${clickCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 25),)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            clickCounter += 1;  
            //click = clickCounter == 1 ?  'Click' : 'Clicks';
            setState(() {});
          },
          child: const Icon(Icons.plus_one),
          
        ) 
    ); 
  }
}