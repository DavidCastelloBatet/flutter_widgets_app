import 'package:flutter/material.dart';
import 'package:widgets_app/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes en Flutter')),
      body: ListView.separated(
        itemCount: Routes.menuOptions.length - 1,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) => ListTile(
          leading: Icon(
            Routes.menuOptions[index + 1].icon,
            color: Colors.indigo,
          ),
          title: Text(Routes.menuOptions[index + 1].name),
          trailing: const Icon(Icons.arrow_forward_outlined),
          onTap: () =>
              Navigator.pushNamed(context, Routes.menuOptions[index + 1].route),
        ),
      ),
    );
  }
}
