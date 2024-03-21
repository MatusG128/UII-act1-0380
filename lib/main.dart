import 'package:flutter/material.dart';
import 'package:matus0380/pantallas0380/panel0380/panel_pantalla0380.dart';

void main() => runApp(MiAppCrepas0380());

class MiAppCrepas0380 extends StatelessWidget {
  const MiAppCrepas0380({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Crepas La Tribu Matus0380",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true),
      home: PanelPantalla0380(),
    );
  }
}
