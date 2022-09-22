import 'package:comida_rapida/src/pages/home_page.dart';
//import 'package:comida_rapida/src/pages/pedido_page.dart';
//import 'package:comida_rapida/src/pages/registrarse_page.dart';
//import 'package:comida_rapida/src/pages/registro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: FirstScreen(),
      //initialRoute: 'registro',
      //routes: {
        //'home' : (BuildContext context) => const FirstScreen(),
        //'registro':(BuildContext context) => const LoginScreen(),
        //'registrate': (BuildContext context) => const RegistrarsePage(),
        //'pedido'   :(context) => const PedidoPage()
      //},
    );
  }
}
