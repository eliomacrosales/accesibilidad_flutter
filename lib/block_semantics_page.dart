import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlockSemanticsPage extends StatefulWidget {
  static const String route = 'block_semantics';
  const BlockSemanticsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BlockSemanticsPageState();
  }
}

class _BlockSemanticsPageState extends State<BlockSemanticsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Block Semantics'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModal(context);
          },
          child: Text('Mostrar Bottom Sheet'),
        ),
      ),
    );
  }


  void showModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;

        return BlockSemantics(
          child: Container(
            height: screenHeight * 0.45,
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: Semantics(
              explicitChildNodes: true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Modal example',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Text(
                      'Cerrar',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
