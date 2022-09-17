import 'package:comida_rapida/src/pages/home_page.dart';
import 'package:comida_rapida/src/pages/registrarse_page.dart';
import 'package:comida_rapida/src/pages/registro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'registro',
      routes: {
        'home' : (BuildContext context) => const FirstScreen(),
        'registro':(BuildContext context) => const LoginScreen(),
        'registrate': (BuildContext context) => const RegistrarsePage()
      },
    );
  }
}
