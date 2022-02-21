import 'package:flutter/material.dart';
import 'tela1.dart';
import 'tela2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _indiceAtual = 0;

  final List _telas = [
    const Tela1(),
    const Tela2(),
  ];

  void quandoClicar(int indice) {
    setState(() {
      _indiceAtual = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        body: _telas[_indiceAtual],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.deepPurple[400],
          currentIndex: _indiceAtual,
          onTap: quandoClicar,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.looks_one),
              label: 'Página 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.looks_two),
              label: 'Página 2',
            ),
          ],
        ),
      ),
    );
  }
}
