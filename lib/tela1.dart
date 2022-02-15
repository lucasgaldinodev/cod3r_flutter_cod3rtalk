import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[600],
        title: const Text(
          'Cod3r Talk',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Corpo do App'),
          ),
          Image.asset(
            'assets/cod3r.png',
            fit: BoxFit.fill,
            height: 300,
            width: 300,
          ),
          const SizedBox(height: 150),
          SizedBox(
            height: 70,
            width: 160,
            child: ElevatedButton(
              child: const Text('Testando!'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                primary: Colors.deepPurple[600],
              ),
              onPressed: () {
                print('Botão funcionando!');
              },
            ),
          ),
        ],
      ),
    );
  }
}
