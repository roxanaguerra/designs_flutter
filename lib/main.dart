import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:designs/screens/basic_design.dart';
import 'package:designs/screens/home_screen.dart';
import 'package:designs/screens/scroll_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // PARA DARLE COLOR AL LOS TEXTOS E ICONOS DE RELOJ,BATERIA, SEÑAL DEL CELULAR
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light); // texto color blanco
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle.dark); // texto color negro

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (BuildContext context) => const BasicDesignScreen(),
        'scroll_screen': (_) => ScrollScreen(),
        'home_screen': (_) => HomeScreen(),
      },
    );
  }
}
