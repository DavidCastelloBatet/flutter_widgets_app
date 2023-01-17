import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes en Flutter')),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.access_time),
          title: Text('Ruta'),
          trailing: Icon(Icons.arrow_forward_outlined),
          onTap: () => Navigator.pushNamed(context, 'listview1'),
        ),
      ),
    );
  }
}
