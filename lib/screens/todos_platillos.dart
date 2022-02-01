import 'package:flutter/material.dart';
import 'package:restauran_app/widgets/menu_lateral.dart';


class PlatilloScreen extends StatelessWidget {
  static final routeName = 'platillos_screen';
  const PlatilloScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  String recetaString = '''
Frutas y verduras
1 Aguacate
2 Chiles pasilla picados
Alimentos horneados y especias
1 Rama de epazote
Panes y alimentos horneados
16 Tortillas en tiritas y fritas  
''';

    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MenuWidget(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar( 
            elevation: 0,
            floating: false,
            pinned: false,
            centerTitle: true,
            title: Text('Comida Mexicana', style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold)), //pasar como parametro ?
            expandedHeight: 300,
            flexibleSpace: Image.asset('assets/fondoMexic.jpg', fit: BoxFit.cover, 
            color: Colors.black.withOpacity(0.3),
            colorBlendMode: BlendMode.darken,
            ),  
                     
          ),
          SliverList(
          delegate: SliverChildListDelegate([
            Container(
               //padding: EdgeInsets.only(top: 10.0),
              child: Column(
              children: [
                  //cuadros con las opciones y sus titulos
                Padding(padding: EdgeInsets.symmetric(vertical: 5)),

                DetallesPlatillos(
                  size: size, nombrePlatillo: 'Quesadillas de Pollo',
                  ingredientes: recetaString,
                  imageRoute: 'quesadillas.jpg',
                  ),               
                DetallesPlatillos(
                  size: size, nombrePlatillo: 'Quesadillas de Carne',
                  ingredientes: recetaString,
                  imageRoute: 'quesadillaCarne.jpg',
                  ),
                DetallesPlatillos(
                  size: size, nombrePlatillo: 'Tacos Horneados(Pollo)',
                  ingredientes: recetaString,
                  imageRoute: 'tacosHorneados.jpg',
                ),
                DetallesPlatillos(
                  size: size, nombrePlatillo: 'Sopa de Tortilla Especial',
                  ingredientes: recetaString,
                  imageRoute: 'sopaTortilla.jpg',
                ),
                  DetallesPlatillos(
                  size: size, nombrePlatillo: 'Taquitos de Pollo           ',
                  ingredientes: recetaString,
                  imageRoute: 'tacosPollo.jpg',
                ),
                //DetallesPlatillos(size: size),
                //DetallesPlatillos(size: size),
                //DetallesPlatillos(size: size),

              ],
              ),
            ),
          ]
          ),
        ),
        ],
      ),
    );
  }
}

class DetallesPlatillos extends StatelessWidget {
  final Size size;
  final String nombrePlatillo;
  final String ingredientes;
  final String imageRoute;

  const DetallesPlatillos({
    Key? key,
    required this.size,
    required this.nombrePlatillo, 
    required this.ingredientes,
    required this.imageRoute,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row( //cambiar por listView o algo similar
        children: <Widget>[
          Container( //SACAR
            padding: EdgeInsets.all(5) ,
            height: 260,
            width: 410,
            child: Card(
              elevation: 9,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
                ),
              child: Row(
              children: [
                Container( //paddin
                  width: 10,
                ),
                Container( //IMAGEN
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(  
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                    image: AssetImage('assets/$imageRoute'),
                    fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),

              Container( 
                padding: EdgeInsets.all(10),
                child: new Column(               
                //mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Container(
                      padding: new EdgeInsets.only(top: 20.0),
                      child: new Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                          '$nombrePlatillo',
                          overflow: TextOverflow.ellipsis,
                          style: new TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'Roboto',
                            color: Colors.blue
                            ),
                          ),               
                        ],
                      ),
                     ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: new Text(
                        '$ingredientes',
                        style: new TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                   /* new Text(
                      'Puntuaciones',
                      style: new TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'Roboto',
                        color: Colors.cyan
                      ),
                    ),*/
                  ],
                ),
              )
            ],
          ),
        ),
      )
        ],
      ),
    );
  }
}

