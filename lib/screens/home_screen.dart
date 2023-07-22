
import 'package:app_flutter_component_v2/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].name),
          leading: Icon(menuOptions[index].icon, color: Colors.indigo,),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => Listview1Screen(),
            // );
            // Navigator.push(context, route);

            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
}