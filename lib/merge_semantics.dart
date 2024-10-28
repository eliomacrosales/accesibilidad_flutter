import 'package:flutter/material.dart';

class MergeSemanticsPage extends StatefulWidget {
  static const String route = 'merge_accesibility';
  const MergeSemanticsPage({Key? key}) : super(key: key);

  @override
  State<MergeSemanticsPage> createState() =>
      _MergeSemanticsPageState();
}

class _MergeSemanticsPageState extends State<MergeSemanticsPage> {
  final String firstText = 'Texto 1';
  final String secondText = 'Texto 2';
  final String thirdText = 'Texto 3';
  final String fourText = 'Texto 4';

  final String secondAccessibilityText = 'Información sobre el ';
  final String thirdAccessibilityText = 'Saldo disponible:';
  final String fourAccessibilityText = 'Estado:';

  bool _isBalanceHidden = true;

  void _revealBalance() {
    setState(() {
      _isBalanceHidden = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de combinacion'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MergeSemantics(
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.black26,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      firstText,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(secondText),
                    Text(thirdText),
                    Text(
                      fourText,
                      style: const TextStyle(
                        color: Colors.indigo,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
