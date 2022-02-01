import 'package:flutter/material.dart';
import 'package:restauran_app/screens/home_screen.dart';
import 'package:restauran_app/screens/todos_platillos.dart';





class MenuWidget extends StatelessWidget {
  const MenuWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, //eliminar el padding de arriba
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),

          ListTile(
            leading: Icon(Icons.home, color: Colors.blue),
            title: Text('Home Menu'),
            onTap: ()=> {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName)
            },
          ),

          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue),
            title: Text('Platillos'),
            onTap: ()=> {
              Navigator.pushReplacementNamed(context, PlatilloScreen.routeName)
            },
          ),

          ListTile(
            leading: Icon(Icons.people, color: Colors.blue),
            title: Text('Personal'),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text('Ajustes'),
            onTap: ()=> {
              Navigator.pushReplacementNamed(context, PlatilloScreen.routeName)
            },
          ),

        ],
      ),
    );
  }
}