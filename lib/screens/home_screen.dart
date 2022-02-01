import 'package:flutter/material.dart';
import 'package:restauran_app/widgets/menu_lateral.dart';
import 'package:restauran_app/widgets/table_platos.dart';


class HomeScreen extends StatelessWidget {
  static final routeName = 'home';
  const HomeScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //extendBodyBehindAppBar: true, //que se vea detras del appbar   
      drawer: MenuWidget(),  
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black12, //agregar color RGBA
            centerTitle: true, //Poner el titulo en medio
            floating: true, //cuando haga scroll hacia arriba que la appbar aparezca
            title: Text('Menu Principal', style: TextStyle(fontSize: 18, color: Colors.white)),
            elevation: 0,
            actions: [
              IconButton(
              icon: Icon( Icons.exit_to_app),
              onPressed: () => {
              /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelpScreen()),
              ),*/
              }, 
            )
            ],
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
               //padding: EdgeInsets.only(top: 10.0),
              child: Column(
              children: [
                  //cuadros con las opciones y sus titulos
                TablePlatos(size: size)
              ],
              ),
            ),
          ]
          ),
        ),
        ],
      )
    );
  }
}



