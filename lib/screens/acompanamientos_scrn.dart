import 'package:flutter/material.dart';

class AcompanamientosScrn extends StatelessWidget {
  const AcompanamientosScrn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        centerTitle: true, //Poner el titulo en medio
        title: Text('Acompañamientos', style: TextStyle(fontSize: 18, color: Colors.white)),
        elevation: 0,
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
      ),
    );
  }
}