import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OrderAccessibilityPage extends StatefulWidget {
  static const String route = 'order_accessibility';

  const OrderAccessibilityPage({Key? key}) : super(key: key);

  @override
  State<OrderAccessibilityPage> createState() => _OrderAccessibilityPageState();
}

class _OrderAccessibilityPageState extends State<OrderAccessibilityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Semantics(sortKey: const OrdinalSortKey(3), child: const Text('Orden de los Nodos')),
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
                  Semantics(
                    label: "Texto 1",
                    sortKey: const OrdinalSortKey(3),
                    readOnly: true,
                    excludeSemantics: true,
                    child: Text('Texto 1', style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Semantics(
                    label: "Texto 2",
                    sortKey: const OrdinalSortKey(1),
                    readOnly: true,
                    excludeSemantics: true,
                    child: Text('Texto 2', style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Semantics(
                    label: "Texto 3",
                    sortKey: const OrdinalSortKey(4),
                    readOnly: true,
                    excludeSemantics: true,
                    child: Text('Texto 3', style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Semantics(
                    label: "Texto 4",
                    sortKey: const OrdinalSortKey(2),
                    readOnly: true,
                    excludeSemantics: true,
                    child: Text('Texto 4', style: const TextStyle(fontWeight: FontWeight.bold)),
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
