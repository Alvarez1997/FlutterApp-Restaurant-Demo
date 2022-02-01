import 'package:flutter/material.dart';

class BebidasScreen extends StatelessWidget {
  const BebidasScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        centerTitle: true, //Poner el titulo en medio
        title: Text('Bebidas', style: TextStyle(fontSize: 18, color: Colors.white)),
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