import 'package:flutter/material.dart';
import 'package:widgets_app/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const AlertScreen(),
      initialRoute: Routes.initialRoute,
      routes: Routes.getAppRoutes(),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
