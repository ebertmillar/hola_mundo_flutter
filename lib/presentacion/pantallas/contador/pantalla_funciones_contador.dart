import 'package:flutter/material.dart';

class PantallaFuncionesContador extends StatefulWidget {
  const PantallaFuncionesContador ({super.key});

  @override
  State<PantallaFuncionesContador> createState() => _PantallaFuncionesContadorState();
}

class _PantallaFuncionesContadorState extends State<PantallaFuncionesContador> {

  int clickCounter = 0;
  //String click='Clicks';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title:const Center(
          child: Text('Funciones Contador'), // Centrado aquí
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: (){
              setState(() {
                clickCounter =0;
              });  
              }),
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            
            BotonPersonalizado(
              icon: Icons.refresh_rounded,
              onPressed: (){
                setState(() {
                  clickCounter =0;
                });
              },
            ),
            const SizedBox( height: 10),
            BotonPersonalizado(
              icon: Icons.plus_one,
              onPressed: (){
                setState(() {
                  clickCounter++;
                });
              },
            ),
            const SizedBox( height: 10),
            BotonPersonalizado(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: (){
                setState(() {
                  if(clickCounter == 0) return;
                  clickCounter--;
                });
              },
            )        
          ],
        ) 
    ); 
  }
}

class BotonPersonalizado extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const BotonPersonalizado({
    super.key, 
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),         
    );
  }
}