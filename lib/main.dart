import 'package:dars21/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "Flutter demo",
      initialRoute: "/",
      onGenerateRoute: (settings) => RouterGenerate.generateRouter(settings),
    );
  }
}
