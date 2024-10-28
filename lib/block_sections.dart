import 'package:flutter/material.dart';

class BlockSections extends StatelessWidget {
  static const String route = 'block_sections';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accesibilidad en Flutter'),
      ),
      body: ListView(
        children: [
          // Sección 1
          Semantics(
            container: true,
            explicitChildNodes: true,
            label: 'Usted está en la sección 1',
            child: Column(
              children: [
                Semantics(
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Texto 1'),
                  ),
                ),
                Semantics(
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Texto 2'),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),

          // Sección 2
          Semantics(
            container: true,
            explicitChildNodes: true,
            label: 'Usted está en la sección 2',
            child: Column(
              children: [
                Semantics(
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Texto 3'),
                  ),
                ),
                Semantics(
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Texto 4'),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),

          // Sección 3
          Semantics(
            container: true,
            explicitChildNodes: true,
            label: 'Usted está en la sección 3',
            child: Column(
              children: [
                Semantics(
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Texto 5'),
                  ),
                ),
                Semantics(
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Texto 6'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
