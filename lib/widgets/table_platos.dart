import 'package:flutter/material.dart';

class TablePlatos extends StatelessWidget {

  const TablePlatos({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;


  @override
  Widget build(BuildContext context) {

    return Table(
      children: [
        TableRow(
          children: [ 
            _ContainerImgTxt(
              imageRoute: 'tacos.jpg', texto: 'Comida Mexicana', 
              subtitle: '12 Platillos', idRoute: 'platillos_screen',
              ),
            _ContainerImgTxt(
              imageRoute: 'ramen.jpg', texto: 'Comida China', 
              subtitle: '15 Platillos', idRoute: 'platillos_screen',
              )
          ]),

        TableRow(
          children: [
            _ContainerImgTxt(
              imageRoute: 'tacos.jpg', texto: 'Comida Italiana', 
              subtitle: '8 Platillos', idRoute: 'platillos_screen',
              ),
           _ContainerImgTxt(
              imageRoute: 'ramen.jpg', texto: 'Comida Tipica', 
              subtitle: '10 Platillos', idRoute: 'platillos_screen',
              )
          ]),

        TableRow(
          children: [
            _ContainerImgTxt(
              imageRoute: 'tacos.jpg', texto: 'Comida Rapida', 
              subtitle: '17 Platillos', idRoute: 'platillos_screen',
              ),
            _ContainerImgTxt(
              imageRoute: 'ramen.jpg', texto: 'Postres', 
              subtitle: '8 Platillos', idRoute: 'platillos_screen',
              )
          ]),
      ],
    );
  }
}


class _ContainerImgTxt extends StatelessWidget {
  final String imageRoute;
  final String texto;
  final String subtitle;
  final String idRoute;

  const _ContainerImgTxt({
    Key? key, 
    required this.imageRoute, 
    required this.texto,
    required this.subtitle,
    required this.idRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 200,
      height: 380,
      child: Column(
        children: [
          GestureDetector(
            onDoubleTap: () => Navigator.pushNamed(context, idRoute) ,            
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FadeInImage(
                  placeholder: AssetImage('assets/no-image.gif'),
                  image: AssetImage('assets/$imageRoute'),
                  fit: BoxFit.cover,
                ),
              ),           
          ),
          //SizedBox(height: 3),
          ListTile(
            title: Text(this.texto, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            subtitle: Text(this.subtitle),
            contentPadding: EdgeInsets.symmetric(horizontal: 25),
          ),
          
        ],
      ),
      
    );
  }
}