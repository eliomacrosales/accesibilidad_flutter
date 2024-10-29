import 'package:flutter/material.dart';

class LecturaText extends StatefulWidget {
  static const String route = 'accesibility_lectura';
  const LecturaText({Key? key}) : super(key: key);

  @override
  State<LecturaText> createState() =>
      _LecturaTextState();
}

class _LecturaTextState extends State<LecturaText> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lectura de textos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.black26,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Saldo 1414 colones con 24 centavos',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),

                  Text(
                    'Saldo 141437358 colones con 24 centavos',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),

                  Text(
                    'Saldo; 141437358; colones con 24 centavos',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),

                  Text(
                    'Saldo; 141;437;358; dólares con 24 centavos',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}