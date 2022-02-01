import 'package:flutter/material.dart';

import 'package:restauran_app/screens/acompanamientos_scrn.dart';
import 'package:restauran_app/screens/bebidas_screen.dart';
import 'package:restauran_app/screens/home_screen.dart';
import 'package:restauran_app/screens/todos_platillos.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Restaurante',
      home: Scaffold(
        body: PageView( //ARREGLAR ESTO ---> SCROLL HACIA LA DERECHA
          children: [
            HomeScreen(), //Platillos
            BebidasScreen(),
            AcompanamientosScrn()
          ],
        ),
      ),
      initialRoute: 'home_screen',
      routes: {
        HomeScreen.routeName    :  ( _ ) => HomeScreen(), //menu principal (PLATILLOS)
        'bebidas_screen'    :  ( _ ) => BebidasScreen(), //pagina en construccion
        'acomp_screen'    :  ( _ ) => AcompanamientosScrn(), //
        PlatilloScreen.routeName    :  ( _ ) => PlatilloScreen(), //pagina de detalles (PLATILLOS)
        //'prueba'    :  ( _ ) => HomePlatillos(), //pagina de detalles (PLATILLOS)
      },
    );
  }
}