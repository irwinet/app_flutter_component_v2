import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const ["NodeJs", "Flutter", "Swift"];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (course) => ListTile(
                title: Text(course),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              )            
          ).toList()          
        ],
      )
    );
  }
}