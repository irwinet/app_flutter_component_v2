import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (context, index) => ListTile(
          title: Text('Nombre de ruta'),
          leading: Icon(Icons.access_time_outlined),
          onTap: () {
            
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
}